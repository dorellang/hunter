private
styleFromContext: aContext
	| method hasStyle |
	method := aContext method.
	hasStyle := (self class isStyleMethod: method).
	hasStyle ifTrue: [
		^ self styleNamed: (method asSymbol trimRight: [ :c | c = $: ])
	] ifFalse: [ ^ nil ]