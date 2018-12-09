helpers
relevantOutgoingEdgesOf: anElement forStyle: aStyle do: aBlock
	anElement outgoingEdges do: [ :anEdge |
		(self isEdge: anEdge of: anElement relevantForStyle: aStyle) ifTrue: [
			aBlock value: anEdge
		].
	]