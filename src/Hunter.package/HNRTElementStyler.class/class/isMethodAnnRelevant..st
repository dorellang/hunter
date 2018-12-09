testing
isMethodAnnRelevant: aMethodAnn
	(stylesBySelector includesKey: aMethodAnn selector) ifTrue: [ ^ true ].
	(aMethodAnn method numArgs = 1) ifFalse: [ ^ false ].
	(self includesBehavior: aMethodAnn methodClass) ifFalse: [ ^ false ].
	(self isStyleMethod: aMethodAnn method) ifFalse: [ ^ false ].
	^ true