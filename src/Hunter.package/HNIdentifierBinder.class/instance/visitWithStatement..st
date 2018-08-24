visiting
visitWithStatement: aNode
	self checkScopeAtNode: aNode.
	aNode object accept: self.
	aNode body accept: self