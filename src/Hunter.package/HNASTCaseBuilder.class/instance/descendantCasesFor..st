accessing
descendantCasesFor: aGetterSelector
	descendantCasesDict ifNil: [ descendantCasesDict := Dictionary new ].
	^ descendantCasesDict at: aGetterSelector ifAbsentPut: [ OrderedCollection new ]