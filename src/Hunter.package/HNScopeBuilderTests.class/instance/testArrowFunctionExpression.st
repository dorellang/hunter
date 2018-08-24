tests
testArrowFunctionExpression
	| programAST functionDeclAST programScope functionArgScope functionBodyScope |
	functionDeclAST := HNArrowFunctionExpressionNode new
				id: nil;
				params: {HNIdentifierNode new name: 'x'};
				body: (HNArrayExpressionNode new
					elements: { HNIdentifierNode new name: 'x' }
				);
				generator: false;
				expression: false;
				async: false.
	programAST := HNProgramNode new
		sourceType: 'script';
		body: { functionDeclAST }.
	programAST accept: metaModelBuilder.
	programAST accept: scopeProcessor.
	programScope := project scopeFromNode: programAST.
	functionArgScope := project scopeFromNode: functionDeclAST.
	functionBodyScope := project scopeFromNode: functionDeclAST body.
	
	"assertions about scope identities"
	self assert: (
		(IdentitySet with: programScope
			with: functionArgScope
			with: functionBodyScope
		) do: [ :scope | self assert: scope isNotNil ];
		size) equals: 3.
		
	"assertions about scopes"
	self assert: (functionArgScope isDeclared: 'x').