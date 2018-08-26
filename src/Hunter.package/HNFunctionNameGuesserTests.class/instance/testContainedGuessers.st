tests
testContainedGuessers
	| guesser |
	guesser := HNFunctionNameGuesser new.
	self assert: (guesser guessers collect: #class)
		equals: {
			HNDefaultExportFunctionNameGuesser.
			HNMethodNameGuesser.
			HNPatternDefaultFunctionNameGuesser.
			HNVariableFunctionNameGuesser.
			HNAssignmentFunctionNameGuesser
		}