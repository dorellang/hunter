refreshing
applyStyles: someStyles on: anElement
	self computedStyles
		select: [ :aStyle | (someStyles includes: aStyle name) or: [ aStyle isDefault ] ] 
		thenDo: [ :aStyle | aStyle applyStyleOn: anElement ]