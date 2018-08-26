visiting
visitForOfStatement: aNode
	self checkScopeAtNode: aNode.
	aNode right accept: self.
	aNode left accept: self.
	aNode body accept: self
