accessing
directChildCasesFor: aGetterSelector
	directChildCasesDict ifNil: [ directChildCasesDict := Dictionary new ].
	^ directChildCasesDict at: aGetterSelector ifAbsentPut: [ OrderedCollection new ]