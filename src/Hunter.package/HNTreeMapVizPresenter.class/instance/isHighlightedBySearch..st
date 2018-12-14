hooks
isHighlightedBySearch: metaModel
	^ stringToFind isEmptyOrNil not
		and: [ metaModel sourceCode includesSubstring: stringToFind ]