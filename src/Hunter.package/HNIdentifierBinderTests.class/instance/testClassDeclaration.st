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
	ast accept: identifierBinder.
	programScope := project scopeFromNode: ast.
	constructorFnArgScope := project scopeFromNode: constructorFn.
	constructorFnBodyScope := project scopeFromNode: constructorFn body.
	doFooFnArgScope := project scopeFromNode: doFooFn.
	doFooFnBodyScope := project scopeFromNode: doFooFn body.
	staticMethodFnArgScope := project scopeFromNode: staticMethodFn.
	staticMethodFnBodyScope := project scopeFromNode: staticMethodFn body.
	
	self assert: ast body first id scope equals: programScope.
	self assert: constructorFn params first scope equals: constructorFnArgScope.
	self assert: doFooFn params first scope equals: doFooFnArgScope.
	self assert: staticMethodFn params first scope equals: staticMethodFnArgScope.