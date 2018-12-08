refreshing
highlightSelectedEntity: aSelectedEntity
	view view elements select: [ :e |
		(e model isKindOf: HNProgram) or: [ e model isKindOf: HNFolder ]
	] thenDo: [ :anElement |
		(anElement model = aSelectedEntity) ifTrue: [
			anElement showStyleNamed: #selected.
			Transcript show: anElement model basename; show: ' was highlighted!!'.
		] ifFalse: [
			anElement hideStyleNamed: #selected.
			Transcript show: anElement model basename; show: ' hidden'.
		]
	]