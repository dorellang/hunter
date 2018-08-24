tests
testReturnStatement
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNReturnStatementNode new
				argument: (
					HNArrowFunctionExpressionNode new
						body: (HNLiteralNode new value: 'butWhosBuying'; raw: '"butWhosBuying"');
						params: {};
						expression: true;
						generator: false;
						async: false
				)
		}
	).

	ast accept: builder.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram functions first name isNil.
