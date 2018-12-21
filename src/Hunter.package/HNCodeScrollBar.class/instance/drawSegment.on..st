drawing
drawSegment: aSegment on: aCanvas
	| totalBounds top bottom rectangle |
	totalBounds := self pagingArea.
	top := aSegment top * totalBounds height / self codeMorph textArea height.
	bottom := aSegment bottom * totalBounds height / self codeMorph textArea height.
	rectangle := 1 @ top corner: totalBounds width-1 @ bottom.
	aCanvas
		fillRectangle: (rectangle translateBy: totalBounds topLeft)
		color: (HNColorTheme scrollBarColorFor: aSegment)