parsing
getArgumentsForScriptDirs: aScriptDirCollection moduleDirs: aModuleDirCollection
moduleOrScriptDirs: aModuleOrScriptDirCollection
	| arguments |
	arguments := OrderedCollection new.
	aScriptDirCollection ifNotEmpty: [
		arguments add: '-s'.
		aScriptDirCollection do: [:each |
			arguments add: (each surroundedBy: '"') ].
	].
	aModuleDirCollection ifNotEmpty: [
		arguments add: '-m'.
		aModuleDirCollection do: [:each |
			arguments add: (each surroundedBy: '"') ].
	].
	aModuleOrScriptDirCollection ifNotEmpty: [
		arguments add: '-x'.
		aModuleOrScriptDirCollection do: [:each |
			arguments add: (each surroundedBy: '"') ].
	].
	^ arguments