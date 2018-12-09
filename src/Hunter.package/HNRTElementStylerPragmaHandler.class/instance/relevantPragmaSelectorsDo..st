enumerating
relevantPragmaSelectorsDo: aBlock
	self class selectorsDo: [ :aSelector |
		aSelector = #relevantPragmaSelectorsDo: ifFalse: [
			aBlock value: aSelector
		]
	]