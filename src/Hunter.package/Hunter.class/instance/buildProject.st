building
buildProject
	| parseResult |
	parseResult := stream ifNotNil: [ self loadFromJSONStream: stream ]
		ifNil: [ jsonFile ifNil: [ self loadFromDirs ] ifNotNil: [ self loadFromJSONFile ] ].
	^ self buildMetamodelFromResultList: parseResult