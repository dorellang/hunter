parsing
parseModuleDirs: aModuleDirCollection
	"Returns an Esprima AST JSON stream"
	^ self parseScriptDirs: {} moduleDirs: aModuleDirCollection