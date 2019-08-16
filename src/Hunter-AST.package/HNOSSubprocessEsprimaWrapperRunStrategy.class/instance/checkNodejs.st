running
checkNodejs
	OSSUnixSubprocess new
		shellCommand: self nodejsCommand, ' --version';
		redirectStdout;
		runAndWaitOnExitDo: [ :command :outString |
			outString ifEmpty: [ self signalNodeNotFoundError ]
		]
