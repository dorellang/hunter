visiting
visitLabeledStatement: aNode
	self checkScopeAtNode: aNode.
	aNode body accept: self