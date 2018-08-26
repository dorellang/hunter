parsing
getArgumentsForScriptDirs: aScriptDirCollection andModuleDirs: aModuleDirCollection
	| arguments |
	arguments := OrderedCollection new.
	aScriptDirCollection ifNotEmpty: [
		arguments add: '-s'.
		arguments addAll: aScriptDirCollection
	].
	aModuleDirCollection ifNotEmpty: [
		arguments add: '-m'.
		arguments addAll: aModuleDirCollection
	].
	^ arguments