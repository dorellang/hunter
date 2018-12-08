testing
isMethodAnnRelevant: aMethodAnn
	(stylesBySelector includesKey: aMethodAnn selector) ifTrue: [ ^ true ].
	(aMethodAnn method numArgs = 1) ifFalse: [ ^ false ].
	(self includesBehavior: aMethodAnn methodClass) ifFalse: [ ^ false ].
	((aMethodAnn method hasPragmaNamed: #styleWithPriority:)
		or: [ (aMethodAnn method hasPragmaNamed: #defaultStyle)]) ifFalse: [ ^ false ].
	^ true