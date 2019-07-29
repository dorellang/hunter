running
runFor: aHunter astStreamDo: aBlock

	| process |
	process := OSSUnixSubprocess new
		command: command;
		arguments: arguments;
		redirectStdoutTo: (OSSVMProcess vmProcess systemAccessor makeBlockingPipe);
		run.
	
	aBlock value: process stdoutStream reader.
	
	command waitForExit.
	command closeAndCleanStreams.