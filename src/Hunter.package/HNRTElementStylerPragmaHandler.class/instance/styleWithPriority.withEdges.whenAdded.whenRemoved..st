pragma handlers
styleWithPriority: anInteger withEdges: aBoolean whenAdded: aSymbol whenRemoved: anotherSymbol
	<pragmaHandler>

	^ HNRTElementMethodStyle new
		name: (pragma methodSelector splitOn: $:) first asSymbol;
		methodSelector: pragma methodSelector;
		priority: anInteger;
		isWithEdges: aBoolean;
		whenAddedSymbol: aSymbol;
		whenRemovedSymbol: anotherSymbol