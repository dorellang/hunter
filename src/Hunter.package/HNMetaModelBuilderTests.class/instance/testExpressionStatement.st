tests
testExpressionStatement
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNExpressionStatementNode new
				expression: (
					HNArrowFunctionExpressionNode new
						params: {};
						body: (HNUnaryExpressionNode new
							operator: '+';
							argument: (HNLiteralNode new value: 1; raw: '"1"'));
							generator: false;
							async: false;
							expression: true);
				directive: false
		}
	).

	ast accept: builder.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram functions first name isNil.
