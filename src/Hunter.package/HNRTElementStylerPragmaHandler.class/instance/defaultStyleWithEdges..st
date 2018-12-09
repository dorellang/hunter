pragma handlers
defaultStyleWithEdges: aBoolean
	<pragmaHandler>

	^ HNRTElementMethodStyle new
		name: (pragma methodSelector splitOn: $:) first asSymbol;
		methodSelector: pragma methodSelector;
		priority: 0;
		isDefault: true;
		isWithEdges: aBoolean