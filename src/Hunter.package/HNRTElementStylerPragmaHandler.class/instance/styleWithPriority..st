pragma handlers
styleWithPriority: aPriority
	<pragmaHandler>

	^ HNRTElementMethodStyle new
		name: (pragma methodSelector splitOn: $:) first asSymbol;
		methodSelector: pragma methodSelector;
		priority: aPriority