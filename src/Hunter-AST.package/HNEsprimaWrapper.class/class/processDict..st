private-parsing
processDict: aDict
	| type class result |
	type := aDict at: 'type' ifAbsent: [ Error signal: 'Expected type in ASTNode'].
	[ class := Smalltalk at: ('HN', type, 'Node') asSymbol ]
		on: Error do: [ Error signal: 'Unknown ASTNode type' ].
	result := class new.
	aDict associations select: [ :assoc | result doesProcessProperty: assoc key ] thenDo: [ :assoc |
		result perform: (assoc key, ':') asSymbol with: (self processValue: assoc value).
	].
	result postProcessWith: aDict.
	^ result