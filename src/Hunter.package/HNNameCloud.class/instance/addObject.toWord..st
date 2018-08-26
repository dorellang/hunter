adding
addObject: object toWord: aString
	| w |
	w := self prepareWord: aString.
	(self isValidWord: w) ifFalse: [ ^ self ].
	tableObjects at: w ifAbsentPut: [ Set new ].
	(tableObjects at: w) add: object