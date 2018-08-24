tests
testGetter
	| guesser ast |
	guesser := HNMethodNameGuesser new.
	ast := (HNClassDeclarationNode new
		id: (HNIdentifierNode new name: 'MyClass');
		body: (
			HNClassBodyNode new
				body: {
					HNMethodDefinitionNode new 
						key: (HNIdentifierNode new name: 'foo');
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
						static: false
				}
		)
	).
	self assert: (guesser guessForNode: (ast body body at: 1) value) equals: 'get foo'