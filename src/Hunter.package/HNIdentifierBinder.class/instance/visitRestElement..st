visiting
visitRestElement: aNode
	self checkScopeAtNode: aNode.
	aNode argument accept: self