visiting
visitYieldExpression: aNode
	aNode 	argument ifNotNil: [ :arg | arg accept: self ]