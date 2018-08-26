visiting
visitReturnStatement: aNode
	aNode argument ifNotNil: [ :arg | arg accept: self ]