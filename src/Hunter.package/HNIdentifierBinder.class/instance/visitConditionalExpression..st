visiting
visitConditionalExpression: aNode
	self checkScopeAtNode: aNode.
	aNode test accept: self.
	aNode consequent accept: self.
	aNode alternate accept: self