refreshing
addHighlightToStringToFind
	(selectedEntity sourceFileContents allRangesOfSubstring: stringToFind) do: [ :each | 
		textSpecAdapter morph addSegment: (self newFindHighlightSegmentFor: each) ]