private
colorsForSubFolderCount: count from: aColor to: anotherColor
	^ count isZero
		ifTrue: [ #() ]
		ifFalse: [ (self transformedForSubFolder: aColor) mix: (self transformedForSubFolder: anotherColor) shades: count + self colorGapBetweenFolders ]