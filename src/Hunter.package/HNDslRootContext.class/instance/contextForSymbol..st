private
contextForSymbol: aSymbol
	^ mySymbolsDict at: aSymbol ifPresent: [ self ]
		ifAbsent: [ HNDslVariableNotFound signalFor: aSymbol ].