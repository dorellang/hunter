as yet unclassified
declareExternalProgramRequiredFrom: aHNProgram to: importedPathString
	| packageName |
	packageName := importedPathString readStream upTo: $/.
	^ self externalProgramsByName
		at: packageName
		ifAbsentPut: [ HNExternalProgram new
				packageName: packageName;
				yourself ]