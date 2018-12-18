refreshing
refreshHighlights
	self removeAllHighlights.

	selectedEntity ifNil: [ ^self ].

	stringToFind isEmptyOrNil ifFalse: [ self addHighlightToStringToFind ].
	(selectedEntity isKindOf: HNProgram) ifFalse: [ self addHighlightToSelectedEntity ].

	textSpecAdapter morph ensureDrawSegmentsInVerticalScrollBar.