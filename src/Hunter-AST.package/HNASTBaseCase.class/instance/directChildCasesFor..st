accessing
directChildCasesFor: slotName
	^ directChildCasesDict ifNil: [ {} ]
		ifNotNil: [ :d | d at: slotName ifAbsent: {} ]