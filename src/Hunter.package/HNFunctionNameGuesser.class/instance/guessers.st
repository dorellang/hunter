accessing
guessers
	guessers ifNil: [
		guessers := {
			HNDefaultExportFunctionNameGuesser new.
			HNMethodNameGuesser new.
			HNPatternDefaultFunctionNameGuesser new.
			HNVariableFunctionNameGuesser new.
			HNAssignmentFunctionNameGuesser new.
		}
	].
	^ guessers