building
buildAST
	parseResultCollection := stream
		ifNotNil: [
			HNEsprimaWrapper parseResultsFrom: stream ]
		ifNil: [
			HNEsprimaWrapper
				parseResultsFromScriptDirs: scriptDirs
				moduleDirs: moduleDirs
				moduleOrScriptDirs: moduleOrScriptDirs ]