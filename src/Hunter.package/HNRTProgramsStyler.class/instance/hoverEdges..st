styles
hoverEdges: anElement
	<styleWithPriority: 15 withEdges: true>
	self relevantEdgesOf: anElement do: [ :anEdge |
		anEdge trachelShape allColor: Color darkGray
	].