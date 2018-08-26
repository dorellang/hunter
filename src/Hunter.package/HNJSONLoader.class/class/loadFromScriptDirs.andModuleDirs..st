public - importing
loadFromScriptDirs: aScriptDirCollection andModuleDirs: aModuleDirCollection
	| stream |
	stream := ZnBufferedReadStream on: (HNEsprimaWrapper
		parseScriptDirs: aScriptDirCollection
		moduleDirs: aModuleDirCollection).
	^ self loadFromJSONStream: stream.