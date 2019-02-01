styles
selected: anElement
	<styleWithPriority: 20 withEdges: true whenAdded: #whenSelectedAddedOn: whenRemoved: #whenSelectedRemovedOn:>
	self highlightAsSelected: anElement.
	self relevantIncomingEdgesOf: anElement do: [ :anEdge |
		anEdge trachelShape allColor: HNColorTheme selectedEntityIncomingArrowColor.
	].
	self relevantOutgoingEdgesOf: anElement do: [ :anEdge |
		anEdge trachelShape allColor: HNColorTheme selectedEntityOutgoingArrowColor.
	].