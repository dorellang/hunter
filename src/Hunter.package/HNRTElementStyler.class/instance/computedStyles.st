accessing
computedStyles
	computedStyles ifNil: [ computedStyles := self class styles, inlineStyles ].
	^ computedStyles