refreshing
addHighlightToStringToFind
	(HNStringSearch allOccurrencesOf: stringToFind in: selectedEntity sourceFileContents)
		do: [ :each | textSpecAdapter morph addSegment: (self newFindHighlightSegmentFor: each) ]