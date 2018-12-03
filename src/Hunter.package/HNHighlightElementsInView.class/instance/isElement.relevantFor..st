testing
isElement: e relevantFor: string
	string ifEmpty: [ ^ false ].
	(e model isKindOf: HNProgram) ifFalse: [ ^false ].
	^ e model filepathInProject includesSubstring: string