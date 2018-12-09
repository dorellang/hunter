actions
doUnhighlightElement: anElement
	styles do: [ :aStyle |
		anElement hideStyleNamed: aStyle
	].
	anElement applyStyles; signalUpdate.