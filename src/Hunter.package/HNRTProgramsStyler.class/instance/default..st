styles
default: anElement
	<defaultStyleWithEdges: true>
	anElement trachelShape color: (self folderColorMap colorAt: anElement model folder);
		strokePaint: Color black;
		strokeWidth: 0.5.
	self relevantEdgesOf: anElement do: [ :anEdge |
		anEdge trachelShape allColor: Color lightGray
	]