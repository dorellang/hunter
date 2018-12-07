initialization
initializeWithParent: parentContext symbols: aSymbolCollection
	parent := parentContext.
	mySymbolsDict := Dictionary new.
	symbolsToContextDict := Dictionary new.
	aSymbolCollection do: [ :symbol |
		mySymbolsDict at: symbol put: nil.
		symbolsToContextDict at: symbol put: self
	]