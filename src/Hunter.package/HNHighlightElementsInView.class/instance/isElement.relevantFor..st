testing
isElement: e relevantFor: string
	string ifEmpty: [ ^ false ].
	(e model isKindOf: String) ifTrue: [ ^ false ] "some strings are included as models too D:".
	self assert: (e model isKindOf: HNProgram). "TODO make this generic"
	^ e model filepathInProject includesSubstring: string