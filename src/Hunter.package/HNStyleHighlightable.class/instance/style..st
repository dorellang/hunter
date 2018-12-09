accessing
style: aSymbolOrCollection
	styles := aSymbolOrCollection isCollection
		ifTrue: aSymbolOrCollection
		ifFalse: #(asSymbolOrCollection)