styles
selected: anElement
	<styleWithPriority: 20 withEdges: true>
	anElement trachelShape strokePaint: UIManager default theme selectionColor darker darker;
		strokeWidth: 5.0.
	"anElement incomingEdges do: [ :anEdge | anEdge trachelShape allColor: Color red ].
	anElement outgoingEdges do: [ :anEdge | anEdge trachelShape allColor: Color blue ]"