parsing
parseResultsFromHunter: aHunter
	self runStrategy
		checkNodejs;
		runFor: aHunter astStreamDo: [ :aStream | ^ self parseResultsFromStream: aStream ]