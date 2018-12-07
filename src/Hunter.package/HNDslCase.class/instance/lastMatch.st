accessing
lastMatch
	^ matches ifEmpty: [ nil ] ifNotEmpty: [ matches last ] 