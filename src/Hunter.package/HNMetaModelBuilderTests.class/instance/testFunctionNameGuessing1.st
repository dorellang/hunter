tests
testFunctionNameGuessing1
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			(HNAssignmentExpressionNode new
				operator: '=';
				left: (HNIdentifierNode new name: 'painkiller');
				right: (HNArrowFunctionExpressionNode new
					id: nil;
					params: {};
					body: (HNLiteralNode new value: 1313; raw: '1313');
					generator: false;
					async: false;
					expression: true
				)
			)
		}
	).

	ast accept: builder. 
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram functions first name equals: 'painkiller'
