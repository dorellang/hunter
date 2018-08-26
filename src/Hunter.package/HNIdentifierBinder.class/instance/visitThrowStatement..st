visiting
visitThrowStatement: aNode
	self checkScopeAtNode: aNode.
	aNode argument accept: self