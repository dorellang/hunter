visiting
visitReturnStatement: aNode
	self checkScopeAtNode: aNode.
	aNode argument ifNotNil: [ :arg | arg accept: self ]