tests
testSequenceExpression
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			(HNSequenceExpressionNode new
				expressions: {
					HNLiteralNode new value: 'hello'; raw: '"hello"'.
					HNIdentifierNode new name: 'hello'.
					HNFunctionExpressionNode new
						id: (HNIdentifierNode new name: 'foo');
						params: {};
						body: (
							HNBlockStatementNode new
								body: {
									(HNReturnStatementNode new argument: (HNLiteralNode new value: 42; raw: '42'))
								}
						);
						expression: true;
						generator: true;
						async: true
				}
			)
		}
	).
	ast accept: builder.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram functions first name equals: 'foo'.
