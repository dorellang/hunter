visiting
visitAssignmentPattern: aNode
	self checkScopeAtNode: aNode.
	aNode left accept: self.
	aNode right accept: self.