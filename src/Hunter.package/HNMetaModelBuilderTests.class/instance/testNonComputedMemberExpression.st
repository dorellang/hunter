tests
testNonComputedMemberExpression
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNMemberExpressionNode new
				computed: false;
				object: (
					HNFunctionExpressionNode new
						id: (HNIdentifierNode new name: 'f');
						params: {};
						body: (HNBlockStatementNode new body: {});
						generator: false;
						expression: false;
						async: false
				);
				property: (HNIdentifierNode new name: 'hola')
		}
	).
	ast accept: builder.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram functions first name equals: 'f'
