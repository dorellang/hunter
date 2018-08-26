tests
testThrowStatement
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNThrowStatementNode new
				argument: (
					HNArrowFunctionExpressionNode new
						params: {};
						body: (HNLiteralNode new value: 42; raw: '42');
						expression: true;
						generator: false;
						async: false
				)
		}
	).
	ast accept: builder.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram functions first name isNil.
