visiting
visitUnaryExpression: aNode
	self checkScopeAtNode: aNode.
	aNode argument accept: self