parsing
parseScriptDirs: aScriptDirCollection moduleDirs: aModuleDirCollection
moduleOrScriptDirs: aModuleOrScriptDirCollection
	"Returns an Esprima AST JSON stream"

	| commandAsString tmpOutputFileReference tmpOutputErrorsFileReference |
	tmpOutputFileReference := FileReference newTempFilePrefix: 'hunter-' suffix: '.json'. 
	tmpOutputErrorsFileReference := tmpOutputFileReference, 'errors'.
	
	commandAsString := String streamContents: [ :stream |
		stream
			nextPutAll: 'node ';
			nextPutAll: (self esprimaBinWrapperPath asPath pathString surroundedBy: '"').
		(self
			getArgumentsForScriptDirs: aScriptDirCollection
			moduleDirs: aModuleDirCollection
			moduleOrScriptDirs: aModuleOrScriptDirCollection) do: [:each | 
				stream space; nextPutAll: each ].
			
		stream
			nextPutAll: ' > ';
			nextPutAll: tmpOutputFileReference pathString;
			nextPutAll: ' 2> ';
			nextPutAll: tmpOutputErrorsFileReference pathString.
 		].
	
	 OSPlatform current runCommand: commandAsString.

	tmpOutputErrorsFileReference contents ifNotEmpty: [ :errorMessage | self error: errorMessage ].

	^ tmpOutputFileReference readStream