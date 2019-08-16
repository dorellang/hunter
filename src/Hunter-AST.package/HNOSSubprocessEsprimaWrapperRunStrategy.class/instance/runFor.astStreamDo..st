running
runFor: aHunter astStreamDo: aBlock

	| process |
	process := OSSUnixSubprocess new
		command: self nodejsCommand;
		arguments: (self esprimaWrapperArgumentsFor: aHunter);
		redirectStdoutTo: (OSSVMProcess vmProcess systemAccessor makeBlockingPipe);
		run.
	
	aBlock value: process stdoutStream reader.
	
	process waitForExit.
	process closeAndCleanStreams.