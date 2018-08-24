guessing
guessForNode: aFunctionNode
	self guessers do: [ :guesser |
		(guesser guessForNode: aFunctionNode) ifNotNil: [ :guessed | ^ guessed ]
	].
	^ nil