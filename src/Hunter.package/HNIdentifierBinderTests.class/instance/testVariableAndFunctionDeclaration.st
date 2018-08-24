tests
testVariableAndFunctionDeclaration
	| ast programScope blockScope functionArgScope functionBodyScope fooId barId bazId fId fArgId |
	ast := HNProgramNode new
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
					id: (HNIdentifierNode new name: 'f');
					params: { (HNIdentifierNode new name: 'f') };
					body: (HNBlockStatementNode new
						body: {HNReturnStatementNode new argument: (HNIdentifierNode new name: 'f')}
					);
					async: false;
					expression: false;
					generator: false
			}
		}.
	ast accept: metaModelBuilder.
	ast accept: scopeProcessor.
	ast accept: identifierBinder.
	programScope := project scopeFromNode: ast.
	blockScope := project scopeFromNode: ast body second.
	functionArgScope := project scopeFromNode: ast body second body last.
	functionBodyScope := project scopeFromNode: ast body second body last body.
	fooId := ast body first declarations first id.
	barId := ast body second body first declarations first id.
	bazId := ast body second body second declarations first id.
	fId := ast body second body third id.
	fArgId := ast body second body third params first.
	
	"assertions about scopes"
	self assert: fooId scope equals: programScope.
	self assert: barId scope equals: blockScope.
	self assert: bazId scope equals: programScope.
	self assert: fId scope equals: programScope.
	self assert: fArgId scope equals: functionArgScope.