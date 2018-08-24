tests
testClassDeclaration
	| ast constructorFn doFooFn staticMethodFn programScope doFooFnArgScope doFooFnBodyScope
	  constructorFnArgScope constructorFnBodyScope staticMethodFnArgScope staticMethodFnBodyScope |
	constructorFn := HNFunctionExpressionNode new
		params: {(HNIdentifierNode new name: 'arg')};
		generator: false;
		async: false;
		expression: false;
		body: (HNBlockStatementNode new body: {}).
	doFooFn := HNFunctionExpressionNode new
		params: {(HNIdentifierNode new name: 'x')};
		generator: false;
		async: false;
		expression: false;
		body: (HNBlockStatementNode new body: {}).
	staticMethodFn := HNFunctionExpressionNode new
		params: {(HNIdentifierNode new name: 'param')};
		generator: false;
		async: false;
		expression: false;
		body: (HNBlockStatementNode new body: {}).
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNClassDeclarationNode new
				id: (HNIdentifierNode new name: 'Klass');
				body: (HNClassBodyNode new
					body: {
						HNMethodDefinitionNode new
							key: (HNIdentifierNode new name: 'constructor');
							computed: false;
							value: constructorFn;
							kind: 'constructor';
							static: false.
						HNMethodDefinitionNode new
							key: (HNIdentifierNode new name: 'doFoo');
							computed: false;
							value: doFooFn;
							kind: 'method';
							static: false.
						HNMethodDefinitionNode new
							key: (HNIdentifierNode new name: 'staticMethod');
							computed: false;
							value: staticMethodFn;
							kind: 'method';
							static: true.
					}
				);
				superClass: nil	.
		}
	).
	ast accept: metaModelBuilder.
	ast accept: scopeProcessor.
	programScope := project scopeFromNode: ast.
	constructorFnArgScope := project scopeFromNode: constructorFn.
	constructorFnBodyScope := project scopeFromNode: constructorFn body.
	doFooFnArgScope := project scopeFromNode: doFooFn.
	doFooFnBodyScope := project scopeFromNode: doFooFn body.
	staticMethodFnArgScope := project scopeFromNode: staticMethodFn.
	staticMethodFnBodyScope := project scopeFromNode: staticMethodFn body.
	
	"assertions about scopes themselves"
		self assert: (
	(IdentitySet withAll: {
		programScope.
		constructorFnArgScope. 
		constructorFnBodyScope.
		doFooFnArgScope.
		doFooFnBodyScope.
		staticMethodFnArgScope.
		staticMethodFnBodyScope
	}) do: [ :scope | self assert: scope isNotNil ]; size) equals: 7.

	self assert: (programScope isDeclared: 'Klass').
	self assert: (constructorFnArgScope isDeclared: 'arg').
	self assert: (doFooFnArgScope isDeclared: 'x').
	self assert: (staticMethodFnArgScope isDeclared: 'param').