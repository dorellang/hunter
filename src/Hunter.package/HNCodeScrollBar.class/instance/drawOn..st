drawing
drawOn: aCanvas
	super drawOn: aCanvas.
	bounds isWide
		ifFalse: [ self drawSegmentsOn: aCanvas ]