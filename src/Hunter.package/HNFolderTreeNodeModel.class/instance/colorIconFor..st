converting
colorIconFor: aHNFolder
	| iconColor |
	iconColor := aHNFolder 
		attributeAt: #mappedColor 
		ifAbsent: [ 
			self flag: #todo. "It's executed before #mappedColor is set". 
			Color transparent ].

	^ (FormCanvas extent: 16 @ 16)
		fillRectangle: (4 @ 4 extent: 10 @ 10) color: iconColor;
		form