tests
testArrowFunctionExpression
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			HNArrowFunctionExpressionNode new
				id: (HNIdentifierNode new name: 'foo');
				params: {HNIdentifierNode new name: 'dummy'};
				body: (
					HNArrowFunctionExpressionNode new
						params: {};
						body: HNThisExpressionNode new;
						generator: false;
						expression: true;
						async: false
				);
				generator: false;
				expression: true;
				async: false.
		}
	).
	ast accept: builder.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram variables size equals: 0.
	self assert: self defaultProgram functions first name equals: 'foo'.
	self assert: self defaultProgram functions first arguments size equals: 1.
	self assert: self defaultProgram functions first arguments first name equals: 'dummy'.
	self assert: self defaultProgram functions first variables size equals: 1.
	self assert: self defaultProgram functions first variables first
		equals: self defaultProgram functions first arguments first.
	self assert: self defaultProgram functions first functions size equals: 1.
	self assert: self defaultProgram functions first functions first name isNil
