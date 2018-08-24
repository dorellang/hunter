tests
testAssignmentPattern
	|guesser ast|
	guesser := HNPatternDefaultFunctionNameGuesser new.
	ast := (HNVariableDeclarationNode new
		kind: 'let';
		declarations: {HNVariableDeclaratorNode new
			id: (HNArrayPatternNode new
				elements: {HNAssignmentPatternNode new
					left: (HNIdentifierNode new name: 'func1');
					right: (HNFunctionExpressionNode new
						params: {};
						body: (HNBlockStatementNode new body: {});
						generator: false;
						expression: false;
						async: false
					)
				}
			);
			init: (HNArrayExpressionNode new elements: {})
		}
	).
	self assert: (guesser guessForNode: ((ast declarations at: 1) id elements at: 1) right)
		equals: 'func1'.