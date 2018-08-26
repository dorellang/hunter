accessing
name
	name ifNil: [ name := HNFunctionNameGuesser new guessForNode: definitionNode ].
	^ name