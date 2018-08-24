tests
testVariableAndFunctionDeclaration
	| programAST programScope blockScope functionArgScope functionBodyScope |
	programAST := HNProgramNode new
		sourceType: 'script';
		body: {
			HNVariableDeclarationNode new
				kind: 'let';
				declarations: {
					HNVariableDeclaratorNode new
						id: (HNIdentifierNode new name: 'foo');
						init: (HNLiteralNode new value: 42; raw: '42').
				}.
			HNBlockStatementNode new body: {
				HNVariableDeclarationNode new
					kind: 'const';
					declarations: {
						HNVariableDeclaratorNode new
							id: (HNIdentifierNode new name: 'bar');
							init: (HNLiteralNode new value: 13; raw: '13').
					}.
				HNVariableDeclarationNode new
					kind: 'var';
					declarations: {
						HNVariableDeclaratorNode new
							id: (HNIdentifierNode new name: 'baz');
							init: (HNLiteralNode new value: 'baz'; raw: '"baz"').
					}.
				HNFunctionDeclarationNode new
					id: (HNIdentifierNode new name: 'func');
					params: { (HNIdentifierNode new name: 'x') };
					body: (HNBlockStatementNode new
						body: {HNReturnStatementNode new argument: (HNIdentifierNode new name: 'x')}
					);
					async: false;
					expression: false;
					generator: false
			}
		}.
	programAST accept: metaModelBuilder.
	programAST accept: scopeProcessor.
	programScope := project scopeFromNode: programAST.
	blockScope := project scopeFromNode: programAST body second.
	functionArgScope := project scopeFromNode: programAST body second body last.
	functionBodyScope := project scopeFromNode: programAST body second body last body.
	
	"assertions about scope identities"
	self assert: (
		(IdentitySet with: programScope
			with: blockScope
			with: functionArgScope
			with: functionBodyScope
		) do: [ :scope | self assert: scope isNotNil ];
		size) equals: 4.

	"assertions about scopes"
	programScope isDeclared: 'foo'; isDeclared: 'baz'; isDeclared: 'func'.
	blockScope isDeclared: 'bar'.
	self assert: (programScope lookup: 'func' occurringBefore: 1) class equals: HNFunction.
	self assert: (programScope lookup: 'baz' occurringBefore: 1) class equals: HNUndefinedValue.