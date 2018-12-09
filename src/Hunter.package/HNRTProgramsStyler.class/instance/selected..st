styles
selected: anElement
	<styleWithPriority: 20 withEdges: true>
	anElement trachelShape color:  UIManager default theme selectionColor.
	"anElement trachelShape strokePaint: UIManager default theme selectionColor darker darker;
		strokeWidth: 5.0."
	self relevantIncomingEdgesOf: anElement do: [ :anEdge |
		anEdge trachelShape allColor: Color red.
		anEdge pushFront.
	].
	self relevantOutgoingEdgesOf: anElement do: [ :anEdge |
		anEdge trachelShape allColor: Color blue.
		anEdge pushFront
	].
	anElement pushFront 