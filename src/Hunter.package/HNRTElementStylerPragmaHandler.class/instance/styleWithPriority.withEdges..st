pragma handlers
styleWithPriority: aPriority withEdges: aBoolean
	<pragmaHandler>

	^ HNRTElementMethodStyle new
		name: pragma methodSelector allButLast asSymbol;
		methodSelector: pragma methodSelector;
		priority: aPriority;
		isWithEdges: true