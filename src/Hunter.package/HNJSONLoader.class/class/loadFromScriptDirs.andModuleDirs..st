public - importing
loadFromScriptDirs: aScriptDirCollection andModuleDirs: aModuleDirCollection
	| stream |
	stream := ZnBufferedReadStream on: (HNBaseEsprimaWrapper
		parseScriptDirs: aScriptDirCollection
		moduleDirs: aModuleDirCollection).
	^ self loadFromJSONStream: stream.