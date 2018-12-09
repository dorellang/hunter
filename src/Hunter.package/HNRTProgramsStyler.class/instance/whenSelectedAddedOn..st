style callbacks
whenSelectedAddedOn: anElement
	anElement pushFront.
	anElement connectedEdges do: [ :anEdge | anEdge pushFront ]