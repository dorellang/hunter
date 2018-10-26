parsing
parseScriptDirs: aScriptDirCollection moduleDirs: aModuleDirCollection
	^ self parseScriptDirs: aScriptDirCollection
		moduleDirs: aModuleDirCollection
		moduleOrScriptDirs: {}