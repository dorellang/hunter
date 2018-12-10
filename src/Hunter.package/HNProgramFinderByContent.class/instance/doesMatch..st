testing
doesMatch: aProgram
	^ aProgram sourceCode includesSubstring: stringToFind caseSensitive: false