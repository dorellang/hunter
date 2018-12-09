styles
hover: anElement
	<styleWithPriority: 30 withEdges: true>
	anElement trachelShape color: anElement color darker darker darker.
	"anElement incomingEdges do: [ :anEdge | anEdge trachelShape allColor: Color red ].
	anElement outgoingEdges do: [ :anEdge | anEdge trachelShape allColor: Color blue ]"