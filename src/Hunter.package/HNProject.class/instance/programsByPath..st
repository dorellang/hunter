accessing
programsByPath: aPathString
	^ self programsByPath at: aPathString ifAbsent: [ nil ]