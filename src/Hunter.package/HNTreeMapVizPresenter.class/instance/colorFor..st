hooks
colorFor: metaModel
	^ (self isHighlightedBySearch: metaModel)
		ifTrue: [ HNColorTheme searchHighlightColor ]
		ifFalse: [ (self isSelectedSubProgramEntity: metaModel)
				ifTrue: [ HNColorTheme selectedSubProgramEntityColor ]
				ifFalse: [ Color transparent ] ]