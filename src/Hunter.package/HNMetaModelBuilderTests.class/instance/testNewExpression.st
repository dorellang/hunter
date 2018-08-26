tests
testNewExpression
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNNewExpressionNode new
				callee: (
					HNFunctionExpressionNode new
						id: (HNIdentifierNode new name: 'hello');
						params: {};
						body: (HNBlockStatementNode new body: {});
						generator: false;
						expression: false;
						async: false
				);
				arguments: {
					HNArrowFunctionExpressionNode new
						params: {};
						body: (HNLiteralNode new value: 'world'; raw: '"world"');
						generator: false;
						expression: false;
						async: false
				}
		}
	).

	ast accept: builder.
	self assert: self defaultProgram functions size equals: 2.
	self assert: self defaultProgram functions first name equals: 'hello'.
	self assert: self defaultProgram functions second name isNil.
