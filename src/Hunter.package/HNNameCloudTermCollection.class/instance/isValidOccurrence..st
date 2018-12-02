testing
isValidOccurrence: aNameCloudOccurrence
	| word |
	self flag: #todo. "ban common words"
	word := aNameCloudOccurrence word.
	^ (word notEmpty) and: [ word size > 2 ]