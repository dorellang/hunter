tests
testIdentifier
	| guesser ast |
	guesser := HNVariableFunctionNameGuesser new.
	ast := (HNVariableDeclarationNode new
		kind: 'let';
		declarations: {HNVariableDeclaratorNode new
			id: (HNIdentifierNode new name: 'life42');
			init: (HNFunctionExpressionNode new
				params: {};
				body: (HNBlockStatementNode new body: {});
				async: false;
				generator: false;
				expression: false
			)
		}
	).
	self assert: (guesser guessForNode: (ast declarations at: 1) init) equals: 'life42'.