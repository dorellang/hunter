private - loading
loadFromDirs
	| stream |
	stream := ZnBufferedReadStream on: (HNEsprimaWrapper
		parseScriptDirs: scriptDirs
		moduleDirs: moduleDirs).
	^ self loadFromJSONStream: stream.