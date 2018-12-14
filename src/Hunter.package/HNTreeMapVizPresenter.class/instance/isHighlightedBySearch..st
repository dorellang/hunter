hooks
isHighlightedBySearch: metaModel
	^ stringToFind isEmptyOrNil not
		and: [ (metaModel isKindOf: HNProgram) not
				and: [ HNStringSearch does: metaModel sourceCode include: stringToFind ] ]