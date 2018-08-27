building
buildAST
	^ stream ifNotNil: [ self loadFromJSONStream: stream ]
		ifNil: [ jsonFile ifNil: [ self loadFromDirs ] ifNotNil: [ self loadFromJSONFile ] ]