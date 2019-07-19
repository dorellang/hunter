parsing
readStreamFromParsingDirectoriesOfTypeScript: aScriptDirCollection module: aModuleDirCollection
moduleOrScript: aModuleOrScriptDirCollection
	"Returns an Esprima AST JSON stream"
	| process |
	process := OSSUnixSubprocess new
		command: 'node';
		arguments: { self esprimaWrapperPath asPath pathString },
			(self getArgumentsForScriptDirs: aScriptDirCollection
				moduleDirs: aModuleDirCollection
				moduleOrScriptDirs: aModuleOrScriptDirCollection);
		redirectStdoutTo: (OSSVMProcess vmProcess systemAccessor makeBlockingPipe);
		run.
	^ process stdoutStream reader