as yet unclassified
declareUnknownProgramRequiredFrom: aHNProgram to: resolvedPath
	^ self unknownProgramsByPath
		at: resolvedPath
		ifAbsentPut: [
			HNUnknownProgram new
				project: self;
				path: resolvedPath;
				yourself ]