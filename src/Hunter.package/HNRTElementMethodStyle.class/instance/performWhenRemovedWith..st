message performing
performWhenRemovedWith: anElement
	whenRemovedSymbol ifNil: [ ^ self ].
	anElement styler perform: whenRemovedSymbol with: anElement