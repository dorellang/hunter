as yet unclassified
declareUnknownProgramRequiredFrom: aHNProgram to: resolvedPath
	^ self unknownProgramsByPath
		at: resolvedPath
		ifAbsentPut: [ HNUnknownProgram new
				path: resolvedPath;
				yourself ]