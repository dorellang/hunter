tests
testWithLiteral
	| guesser ast |
	guesser := HNMethodNameGuesser new.
	ast := (HNObjectExpressionNode new
		properties: {
			HNPropertyNode new
				key: (HNLiteralNode new value: 'doge'; raw: '"doge"');
				computed: false;
				value: (
					HNFunctionExpressionNode new
						params: {};
						body: (HNBlockStatementNode new body: {});
						generator: false;
						expression: false;
						async: false
				);
				kind: 'init';
				method: false;
				shorthand: false
		}
	).
	self assert: (guesser guessForNode: (ast properties at: 1) value) equals: 'doge'