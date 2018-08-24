tests
testGetter
	| guesser ast |
	guesser := HNMethodNameGuesser new.
	ast := (HNObjectExpressionNode new
		properties: {
			HNPropertyNode new
				key: (HNIdentifierNode new name: 'werld');
				computed: false;
				value: (
					HNFunctionExpressionNode new
						params: {};
						body: (HNBlockStatementNode new body: {});
						generator: false;
						expression: false;
						async: false
				);
				kind: 'get';
				method: false;
				shorthand: false
		}
	).
	self assert: (guesser guessForNode: (ast properties at: 1) value) equals: 'get werld'