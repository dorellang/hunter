style callbacks
whenSelectedRemovedOn: anElement
	anElement connectedEdges do: [ :anEdge | anEdge pushBack ]