testing
isValidWord: word
	^ (super isValidWord: word) and: [ word size > 2 ]