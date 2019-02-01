hooks
colorFor: metaModel
	^ (self isHighlightedBySearch: metaModel)
		ifTrue: [ HNColorTheme searchHighlightColor ]
		ifFalse: [ metaModel = selectedEntity
				ifTrue: [ HNColorTheme selectedSubProgramEntityColor ]
				ifFalse: [ Color transparent ] ]