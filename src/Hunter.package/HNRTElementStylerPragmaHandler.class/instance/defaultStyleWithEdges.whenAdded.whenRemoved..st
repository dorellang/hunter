pragma handlers
defaultStyleWithEdges: aBoolean whenAdded: aSymbol whenRemoved: anotherSymbol
	<pragmaHandler>

	^ HNRTElementMethodStyle new
		name: (pragma methodSelector splitOn: $:) first asSymbol;
		methodSelector: pragma methodSelector;
		priority: 0;
		isDefault: true;
		isWithEdges: aBoolean;
		whenAddedSymbol: aSymbol;
		whenRemovedSymbol: anotherSymbol