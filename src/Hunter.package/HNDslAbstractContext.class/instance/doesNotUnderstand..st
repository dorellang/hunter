reflective operations
doesNotUnderstand: aMessage
	aMessage arguments ifEmpty: [ ^ self lookupSymbol: aMessage selector ].
	aMessage arguments size = 1 ifTrue: [
		^ self overrideSymbol: aMessage selector allButLast with: aMessage argument
	].
	super doesNotUnderstand: aMessage