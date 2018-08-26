parsing
parseScriptDirs: aScriptDirCollection
	"Returns an Esprima AST JSON stream"
	^ self parseScriptDirs: aScriptDirCollection moduleDirs: {}