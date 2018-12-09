actions
doUnhighlightElement: anElement
	anElement hideStyleNamed: style;
		applyStyles;
		signalUpdate