refreshing
addHighlightToStringToFind
	(selectedEntity sourceFileContents allRangesOfSubstring: stringToFind caseSensitive: false) do: [ :each | 
		textSpecAdapter morph addSegment: (self newFindHighlightSegmentFor: each) ]