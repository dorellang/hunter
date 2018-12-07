accessing
matchesDirectChildren
	^ group ifNotNil: [ group matchesDirectChildren ] ifNil: [ false ]