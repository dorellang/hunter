parsing
parseResultsFromScriptDirs: scriptDirs moduleDirs: moduleDirs moduleOrScriptDirs: moduleOrScriptDirs

	| aStream |
	aStream := ZnBufferedReadStream on:
		(self
			readStreamFromParsingDirectoriesOfTypeScript: scriptDirs
			module: moduleDirs
			moduleOrScript: moduleOrScriptDirs).

	^ self parseResultsFrom: aStream