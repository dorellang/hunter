tests
testConditionalExpression
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNConditionalExpressionNode new
				test: (
					HNFunctionExpressionNode new
						id: (HNIdentifierNode new name: 'foo');
						params: {};
						body: (HNBlockStatementNode new body: {});
						generator: false;
						async: false;
						expression: true
				);
				consequent: (
					HNFunctionExpressionNode new
						id: (HNIdentifierNode new name: 'bar');
						params: {};
						body: (HNBlockStatementNode new body: {});
						generator: false;
						async: false;
						expression: true
				)
		}
	).
	ast accept: builder.
	self assert: self defaultProgram functions size equals: 2.
	self assert: self defaultProgram functions first name equals: 'foo'.
	self assert: self defaultProgram functions second name equals: 'bar'.
