visiting
visitArrowFunctionExpression: aNode
	self checkScopeAtNode: aNode.
	self handleFunctionLikeNode: aNode