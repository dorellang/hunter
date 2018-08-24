visiting
visitFunctionExpression: aNode
	self checkScopeAtNode: aNode.
	self handleFunctionLikeNode: aNode