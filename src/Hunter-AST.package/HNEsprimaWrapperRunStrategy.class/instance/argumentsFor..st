running
argumentsFor: aHunter
	^ 	{ HNEsprimaWrapper esprimaWrapperPath asPath pathString },
		(self
			getArgumentsForScriptDirs: aHunter scriptDirs
			moduleDirs: aHunter moduleDirs
			moduleOrScriptDirs: aHunter moduleOrScriptDirs).