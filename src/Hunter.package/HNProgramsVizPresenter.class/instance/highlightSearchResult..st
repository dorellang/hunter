refreshing
highlightSearchResult: someEntities
	| entitySet |
	entitySet := someEntities asSet.
	view view elements select: [ :e |
		(e model isKindOf: HNProgram) or: [ e model isKindOf: HNFolder ]
	] thenDo: [ :anElement |
		(entitySet includes: anElement model) ifTrue: [
			anElement showStyleNamed: #searchResult
		] ifFalse: [
			anElement hideStyleNamed: #searchResult
		]
	]