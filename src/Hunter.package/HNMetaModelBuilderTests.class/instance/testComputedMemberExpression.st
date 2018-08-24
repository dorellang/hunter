tests
testComputedMemberExpression
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNMemberExpressionNode new
				computed: true;
				object: (
					HNFunctionExpressionNode new
						id: (HNIdentifierNode new name: 'f');
						params: {};
						body: (HNBlockStatementNode new body: {});
						generator: false;
						expression: false;
						async: false
				);
				property: (
					HNCallExpressionNode new
						callee: (
							HNArrowFunctionExpressionNode new
								params: {};
								body: (HNIdentifierNode new name: 'hola');
								expression: false;
								generator: false;
								async: false
						);
						arguments: {}
				)
		}
	).
	ast accept: builder.
	self assert: self defaultProgram functions size equals: 2.
	self assert: self defaultProgram functions first name equals: 'f'.
	self assert: self defaultProgram functions second name isNil
