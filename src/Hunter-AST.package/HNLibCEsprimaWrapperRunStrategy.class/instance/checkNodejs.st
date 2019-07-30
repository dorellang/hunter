running
checkNodejs
	| version |
	version := OSPlatform current resultOfCommand: self nodejsCommand, ' --version'.
	
	version ifEmpty: [ self signalNodeNotFoundError ]