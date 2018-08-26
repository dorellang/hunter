parsing
parseScriptDirs: aScriptDirCollection moduleDirs: aModuleDirCollection
	"Returns an Esprima AST JSON stream"
	| process |
	process := OSSUnixSubprocess new
		command: 'node';
		arguments: { self esprimaBinWrapperPath },
			(self getArgumentsForScriptDirs: aScriptDirCollection andModuleDirs: aModuleDirCollection);
		redirectStdoutTo: (OSSVMProcess vmProcess systemAccessor makeBlockingPipe);
		run.
	^ process stdoutStream reader