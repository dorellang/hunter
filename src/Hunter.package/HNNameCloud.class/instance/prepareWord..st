utility
prepareWord: word
	^ (word select: #isLetter) asLowercase