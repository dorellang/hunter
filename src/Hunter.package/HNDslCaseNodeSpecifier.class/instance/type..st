public
type: aSymbolOrCollection
	| collection |
	collection := aSymbolOrCollection isSymbol ifTrue: [ { aSymbolOrCollection } ]
		ifFalse: [ aSymbolOrCollection ].
	caseConfigurator types: collection