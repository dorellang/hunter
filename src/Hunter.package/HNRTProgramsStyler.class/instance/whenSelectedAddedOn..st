style callbacks
whenSelectedAddedOn: anElement
	anElement connectedEdges do: [ :anEdge | anEdge pushFront ].
	anElement pushFront.