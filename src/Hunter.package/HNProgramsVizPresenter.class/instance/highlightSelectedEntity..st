refreshing
highlightSelectedEntity: aSelectedEntity
	view view elements select: [ :e |
		(e model isKindOf: HNBasicMetaModel)
	] thenDo: [ :anElement |
		(aSelectedEntity notNil and: [ anElement model = aSelectedEntity program ]) ifTrue: [
			anElement showStyleNamed: #selected.
		] ifFalse: [
			anElement hideStyleNamed: #selected.
		]
	]