helpers
relevantEdgesOf: anElement forStyle: aStyle do: aBlock
	anElement connectedEdges do: [ :anEdge |
		(self isEdge: anEdge of: anElement relevantForStyle: aStyle) ifTrue: [
			aBlock value: anEdge
		].
	]