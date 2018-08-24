tests
testBasic
	| guesser ast |
	guesser := HNAssignmentFunctionNameGuesser new.
	ast := HNAssignmentExpressionNode new
		operator: '=';
		left: (HNIdentifierNode new name: 'helloWorld');
		right: (HNArrowFunctionExpressionNode new
			id: nil;
			params: {};
			body: (HNIdentifierNode new name: 'window');
			generator: false;
			async: false;
			expression: true
		).
	self assert: (guesser guessForNode: ast right) equals: 'helloWorld'.