running
getArgumentsForScriptDirs: aScriptDirCollection moduleDirs: aModuleDirCollection
moduleOrScriptDirs: aModuleOrScriptDirCollection
	| arguments |
	arguments := OrderedCollection new.
	aScriptDirCollection ifNotEmpty: [
		arguments add: '-s'.
		arguments addAll: aScriptDirCollection.
	].
	aModuleDirCollection ifNotEmpty: [
		arguments add: '-m'.
		arguments addAll: aModuleDirCollection.
	].
	aModuleOrScriptDirCollection ifNotEmpty: [
		arguments add: '-x'.
		arguments addAll: aModuleOrScriptDirCollection.
	].
	^ arguments