private
basicOverrideSymbol: aSymbol with: something
	mySymbolsDict at: aSymbol ifPresent: [ mySymbolsDict at: aSymbol put: something ]
		ifAbsent: [ HNDslVariableNotFound signalFor: aSymbol ]