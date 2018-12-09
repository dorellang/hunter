refreshing
highlightSelectedFolder: aSelectedFolder
	view view elements select: [ :e |
		(e model isKindOf: HNProgram)
	] thenDo: [ :anElement |
		(aSelectedFolder notNil and: [ aSelectedFolder containsProgram: anElement model ]) ifTrue: [
			anElement showStyleNamed: #withSelectedFolder.
		] ifFalse: [
			anElement hideStyleNamed: #withSelectedFolder.
		]
	]