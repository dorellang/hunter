private - loading
loadFromDirs
	| aStream |
	aStream := ZnBufferedReadStream on: (HNEsprimaWrapper
		parseScriptDirs: scriptDirs
		moduleDirs: moduleDirs
		moduleOrScriptDirs: moduleOrScriptDirs).
	^ self loadFromJSONStream: aStream.