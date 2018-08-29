visiting
visitReturnStatement: aNode
	self matcher processNode: aNode.
	aNode argument ifNotNil: [ :arg | arg accept: self ]