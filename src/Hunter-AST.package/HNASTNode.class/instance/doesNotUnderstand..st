reflective operations
doesNotUnderstand: aMessage
	| selector |
	selector := aMessage selector.
	(selector size >= 8 and: [ selector beginsWith: 'hasType' ])
		ifTrue: [ ^ self type = (selector copyFrom: 8 to: selector size) ]
		ifFalse: [ super doesNotUnderstand: aMessage ]