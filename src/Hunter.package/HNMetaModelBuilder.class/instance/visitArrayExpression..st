visiting
visitArrayExpression: anArrayExpression
	anArrayExpression elements reject: #isNil thenDo: [ :element | element accept: self ].
