tests
testArrowFunctionExpression
	| ast functionDeclAST programScope functionArgScope functionBodyScope |
	functionDeclAST := HNArrowFunctionExpressionNode new
				id: nil;
				params: {HNIdentifierNode new name: 'x'};
				body: (HNArrayExpressionNode new
					elements: { HNIdentifierNode new name: 'x' }
				);
				generator: false;
				expression: false;
				async: false.
	ast := HNProgramNode new
		sourceType: 'script';
		body: { functionDeclAST }.
	ast accept: metaModelBuilder.
	ast accept: scopeProcessor.
	ast accept: identifierBinder.
	programScope := project scopeFromNode: ast.
	functionArgScope := project scopeFromNode: functionDeclAST.
	functionBodyScope := project scopeFromNode: functionDeclAST body.
		
	"assertions about scopes"
	self assert: functionDeclAST params first scope equals: functionArgScope.
	self assert: functionDeclAST body elements first scope equals: functionArgScope.