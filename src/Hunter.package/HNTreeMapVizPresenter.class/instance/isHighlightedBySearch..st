hooks
isHighlightedBySearch: metaModel
	^ stringToFind isEmptyOrNil not
		and: [ HNStringSearch does: metaModel sourceCode include: stringToFind ]