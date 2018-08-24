visiting
visitUpdateExpression: aNode
	self checkScopeAtNode: aNode.
	aNode argument accept: self