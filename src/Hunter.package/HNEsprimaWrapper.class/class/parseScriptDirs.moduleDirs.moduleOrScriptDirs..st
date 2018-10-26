parsing
parseScriptDirs: aScriptDirCollection moduleDirs: aModuleDirCollection
moduleOrScriptDirs: aModuleOrScriptDirCollection
	"Returns an Esprima AST JSON stream"
	| process |
	process := OSSUnixSubprocess new
		command: 'node';
		arguments: { self esprimaBinWrapperPath },
			(self getArgumentsForScriptDirs: aScriptDirCollection
				moduleDirs: aModuleDirCollection
				moduleOrScriptDirs: aModuleOrScriptDirCollection);
		redirectStdoutTo: (OSSVMProcess vmProcess systemAccessor makeBlockingPipe);
		run.
	^ process stdoutStream reader