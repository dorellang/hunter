building
buildAST
	parseResultCollection := stream
		ifNotNil: [ self loadFromJSONStream: stream ]
		ifNil: [ self loadFromDirs ]