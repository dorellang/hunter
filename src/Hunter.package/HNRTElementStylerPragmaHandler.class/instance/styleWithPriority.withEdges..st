pragma handlers
styleWithPriority: aPriority withEdges: aBoolean
	<pragmaHandler>

	^ HNRTElementMethodStyle new
		name: (pragma methodSelector splitOn: $:) first asSymbol;
		methodSelector: pragma methodSelector;
		priority: aPriority;
		isWithEdges: aBoolean