visiting
visitReturnStatement: aReturnStatement
	aReturnStatement argument ifNotNil: [ :arg | arg accept: self ]
