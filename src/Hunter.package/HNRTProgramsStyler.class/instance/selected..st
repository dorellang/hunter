styles
selected: anElement
	<styleWithPriority: 10>
	anElement trachelShape strokePaint: UIManager default theme selectionColor darker darker;
		strokeWidth: 10.0.
	anElement incomingEdges do: [ :anEdge | anEdge trachelShape color: Color blue ].
	anElement outgoingEdges do: [ :anEdge | anEdge trachelShape color: Color red ]