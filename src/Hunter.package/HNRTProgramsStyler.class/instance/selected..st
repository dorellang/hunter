styles
selected: anElement
	<styleWithPriority: 20 withEdges: true whenAdded: #whenSelectedAddedOn: whenRemoved: #whenSelectedRemovedOn:>
	anElement trachelShape color:  UIManager default theme selectionColor.
	anElement trachelShape strokePaint: UIManager default theme selectionColor darker darker darker darker;
		strokeWidth: 3.0.
	"anElement trachelShape strokePaint: UIManager default theme selectionColor darker darker;
		strokeWidth: 5.0."
	self relevantIncomingEdgesOf: anElement do: [ :anEdge |
		anEdge trachelShape allColor: Color red.
	].
	self relevantOutgoingEdgesOf: anElement do: [ :anEdge |
		anEdge trachelShape allColor: Color blue.
	].