tests
testBinaryExpression
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			(HNBinaryExpressionNode new
				operator: '*';
				left: (
					HNFunctionExpressionNode new
						id: (HNIdentifierNode new name: 'foo');
						params: {};
						body: (
							HNBlockStatementNode new
								body: {
									HNReturnStatementNode new
										argument: (HNLiteralNode new value: 42; raw: '42')
								}
						);
						expression: true;
						generator: true;
						async: true
				);
				right: (
					HNFunctionExpressionNode new
						id: (HNIdentifierNode new name: 'bar');
						params: {};
						body: (
							HNBlockStatementNode new
								body: {
									HNReturnStatementNode new
										argument: (HNLiteralNode new value: 42; raw: '42')
								}
						);
						expression: true;
						generator: true;
						async: true
				)
			)
		}
	).
	ast accept: builder.
	self assert: self defaultProgram functions size equals: 2.
	self assert: self defaultProgram functions first name equals: 'foo'.
	self assert: self defaultProgram functions second name equals: 'bar'
