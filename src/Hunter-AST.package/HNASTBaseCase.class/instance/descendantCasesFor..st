accessing
descendantCasesFor: slotName
	^ descendantCasesDict ifNil: [ {} ]
		ifNotNil: [ :d | d at: slotName ifAbsent: {} ]