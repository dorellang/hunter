private
styleFromContext: aContext
	| method hasStyle |
	method := aContext method.
	hasStyle := (self class isStyleMethod: method).
	hasStyle ifTrue: [
		^ self styleNamed: (method selector splitOn: $:) first
	] ifFalse: [ ^ nil ]