hooks
doesMatchSearchString: anRTElement

	searchTextString isEmptyOrNil ifTrue: [ ^ false ].
	(anRTElement model isKindOf: HNProgram) ifFalse: [ ^false ].
	^ anRTElement model filepathInProject includesSubstring: searchTextString