adding
types: aSymbolCollection
	caseNode types ifNotEmpty: [ HNDslTypesAlreadyDefined signal ].
	caseNode types: aSymbolCollection