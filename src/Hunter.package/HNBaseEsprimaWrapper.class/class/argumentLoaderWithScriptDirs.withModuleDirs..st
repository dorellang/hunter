parsing
argumentLoaderWithScriptDirs: aScriptDirCollection withModuleDirs: aModuleDirCollection
	| arguments loaderFrags |
	arguments := self getArgumentsForScriptDirs: aScriptDirCollection
		andModuleDirs: aModuleDirCollection.
	loaderFrags := arguments collect: [ :arg :i |
		"assuming arg has no quotes"
		'process.argv[',i,'] = ''', arg ,''';'.
	].
	^ '' join: loaderFrags