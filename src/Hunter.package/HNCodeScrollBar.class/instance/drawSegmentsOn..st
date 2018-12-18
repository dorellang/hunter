drawing
drawSegmentsOn: aCanvas
	self codeMorph segments do: [ :each | self drawSegment: each on: aCanvas ]