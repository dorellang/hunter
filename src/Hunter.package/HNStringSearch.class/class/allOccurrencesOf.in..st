public
allOccurrencesOf: stringToFind in: aString
	^ aString allRangesOfSubstring: stringToFind caseSensitive: false