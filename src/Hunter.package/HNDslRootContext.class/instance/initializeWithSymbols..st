initialization
initializeWithSymbols: aSymbolCollection
	mySymbolsDict := Dictionary new.
	aSymbolCollection do: [ :symbol | mySymbolsDict at: symbol put: nil ]