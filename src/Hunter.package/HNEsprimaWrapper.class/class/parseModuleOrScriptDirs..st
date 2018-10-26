parsing
parseModuleOrScriptDirs: aModuleOrScriptDirCollection
	"Returns an Esprima AST JSON stream"
	^ self parseScriptDirs: {} moduleDirs: {} moduleOrScriptDirs: aModuleOrScriptDirCollection