tests
testUnguessable
	| guesser ast |
	guesser := HNFunctionNameGuesser new.
	ast := HNExpressionStatementNode new
		expression: (HNArrowFunctionExpressionNode new
			id: nil;
			params: {};
			body: (HNIdentifierNode new name: 'captured');
			generator: false;
			async: false;
			expression: true
		).
	self assert: (guesser guessForNode: ast expression) isNil