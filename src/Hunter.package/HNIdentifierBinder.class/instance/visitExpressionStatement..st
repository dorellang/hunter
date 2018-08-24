visiting
visitExpressionStatement: aNode
	self checkScopeAtNode: aNode.
	aNode expression accept: self