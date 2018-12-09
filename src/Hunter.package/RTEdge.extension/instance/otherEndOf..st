*Hunter
otherEndOf: anElement
	self from = anElement ifTrue: [ ^ self to ].
	self to = anElement ifTrue: [ ^ self for ].
	^ nil