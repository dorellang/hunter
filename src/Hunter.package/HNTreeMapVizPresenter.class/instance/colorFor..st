hooks
colorFor: metaModel
	^ (stringToFind isEmptyOrNil not and: [ metaModel sourceCode includesSubstring: stringToFind ])
		ifTrue: [ HNColorTheme searchHighlightColor ]
		ifFalse: [ Color white ]