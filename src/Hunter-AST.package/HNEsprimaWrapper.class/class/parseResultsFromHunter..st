parsing
parseResultsFromHunter: aHunter
	self runStrategy
		runFor: aHunter astStreamDo: [ :aStream | ^ self parseResultsFromStream: aStream ]