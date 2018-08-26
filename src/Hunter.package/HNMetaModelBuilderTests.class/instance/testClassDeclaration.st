tests
testClassDeclaration
	| ast constructorFn instanceMethodFn1 instanceMethodFn2 staticMethodFn  classMetaModel |
	constructorFn := HNFunctionExpressionNode new
		params: {};
		generator: false;
		async: false;
		expression: false;
		body: (HNBlockStatementNode new body: {}).
	instanceMethodFn1 := HNFunctionExpressionNode new
		params: {};
		generator: false;
		async: false;
		expression: false;
		body: (HNBlockStatementNode new body: {}).
	instanceMethodFn2 := HNFunctionExpressionNode new
		params: {};
		generator: false;
		async: false;
		expression: false;
		body: (HNBlockStatementNode new body: {}).
	staticMethodFn := HNFunctionExpressionNode new
		params: {};
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
							value: instanceMethodFn1;
							kind: 'method';
							static: false.
						HNMethodDefinitionNode new
							key: (HNIdentifierNode new name: 'doBar');
							computed: false;
							value: instanceMethodFn2;
							kind: 'method';
							static: false.
						HNMethodDefinitionNode new
							key: (HNIdentifierNode new name: 'staticFoo');
							computed: false;
							value: staticMethodFn;
							kind: 'method';
							static: true
					}
				);
				superClass: nil	.
		}
	).
	ast accept: builder.
	self assert: self defaultProgram classes size equals: 1.
	classMetaModel := self defaultProgram classes first.
	self assert: classMetaModel constructor definitionNode equals: constructorFn.
	self assert: classMetaModel instanceMethods size equals: 2.
	self assert: classMetaModel instanceMethods first definitionNode equals: instanceMethodFn1.
	self assert: classMetaModel instanceMethods second definitionNode equals: instanceMethodFn2.
	self assert: classMetaModel staticMethods size equals: 1.
	self assert: classMetaModel staticMethods first definitionNode equals: staticMethodFn.