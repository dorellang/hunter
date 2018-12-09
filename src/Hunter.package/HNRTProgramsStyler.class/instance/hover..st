styles
hover: anElement
	<styleWithPriority: 30 withEdges: true>
	anElement trachelShape color: anElement color darker darker darker.
	self relevantEdgesOf: anElement do: [ :anEdge |
		anEdge trachelShape allColor: Color darkGray
	].