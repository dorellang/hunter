refreshing
highlightSelectedEntity: aSelectedEntity
	view view elements select: [ :e |
		(e model isKindOf: HNProgram) or: [ e model isKindOf: HNFolder ]
	] thenDo: [ :anElement |
		(anElement model = aSelectedEntity) ifTrue: [
			anElement showStyleNamed: #selected.
		] ifFalse: [
			anElement hideStyleNamed: #selected.
		]
	]