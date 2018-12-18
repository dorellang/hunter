drawing
drawSegment: aSegment on: aCanvas
	| top bottom rectangle |
	top := aSegment top * self height / self codeMorph textArea height.
	bottom := aSegment bottom * self height / self codeMorph textArea height.
	rectangle := 1 @ top corner: self width-1 @ bottom.
	aCanvas
		fillRectangle: (rectangle translateBy: self topLeft)
		color: (HNColorTheme scrollBarColorFor: aSegment)