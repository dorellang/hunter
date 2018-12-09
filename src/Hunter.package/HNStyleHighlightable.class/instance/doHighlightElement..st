actions
doHighlightElement: anElement
	styles do: [ :aStyle |
		anElement showStyleNamed: aStyle
	].
	anElement applyStyles; signalUpdate.