visiting
visitSpreadElement: aNode
	self checkScopeAtNode: aNode.
	aNode argument accept: self.