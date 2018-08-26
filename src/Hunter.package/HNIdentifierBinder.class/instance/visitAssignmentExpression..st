visiting
visitAssignmentExpression: aNode
	self checkScopeAtNode: aNode.
	aNode left accept: self.
	aNode right accept: self.
