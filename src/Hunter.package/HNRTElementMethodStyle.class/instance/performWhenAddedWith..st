message performing
performWhenAddedWith: anElement
	whenAddedSymbol ifNil: [ ^ self ].
	anElement styler perform: whenAddedSymbol with: anElement