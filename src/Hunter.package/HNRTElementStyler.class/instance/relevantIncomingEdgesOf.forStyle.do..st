helpers
relevantIncomingEdgesOf: anElement forStyle: aStyle do: aBlock
	anElement incomingEdges do: [ :anEdge |
		(self isEdge: anEdge of: anElement relevantForStyle: aStyle) ifTrue: [
			aBlock value: anEdge
		].
	]