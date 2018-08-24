tests
testBasic
	| guesser ast |
	guesser := HNDefaultExportFunctionNameGuesser new.
	ast := HNExportDefaultDeclarationNode new
		declaration: (HNArrowFunctionExpressionNode new
			id: nil;
			params: {};
			body: (HNLiteralNode new value: 42; raw: '42');
			generator: false;
			async: false;
			expression: false
		).
	self assert: (guesser guessForNode: ast declaration) equals: 'default'.