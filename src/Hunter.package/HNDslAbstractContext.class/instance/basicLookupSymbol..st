private
basicLookupSymbol: aSymbol
	^ mySymbolsDict at: aSymbol ifAbsent: [ HNDslVariableNotFound signalFor: aSymbol ]