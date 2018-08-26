testing
ifTypeIs: aTypeString thenDo: aBlock ifNot: anotherBlock
	^ self type = aTypeString ifTrue: [
		aBlock cull: self
	] ifFalse: [ anotherBlock cull: self ]