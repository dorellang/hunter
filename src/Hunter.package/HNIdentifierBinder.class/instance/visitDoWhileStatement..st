visiting
visitDoWhileStatement: aNode
	self checkScopeAtNode: aNode.
	aNode test accept: self.
	aNode body accept: self