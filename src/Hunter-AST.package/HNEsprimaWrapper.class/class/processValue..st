parsing
processValue: anObject
	anObject isDictionary ifTrue: [ ^ self processDict: anObject ].
	anObject isArray ifTrue: [ ^ anObject collect: [:item |  self processValue: item ] ].
	anObject isNumber ifTrue: [ ^ anObject ].
	anObject isString ifTrue: [ ^ anObject ].
	anObject isNil ifTrue: [ ^ nil ].
	(anObject == true or: [ anObject == false ]) ifTrue: [ ^ anObject ].
	Error signal: 'Unexpected object encountered.'
