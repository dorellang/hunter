visiting
visitLabeledStatement: aNode
	self matcher processNode: aNode.
	aNode label accept: self.
	aNode body accept: self