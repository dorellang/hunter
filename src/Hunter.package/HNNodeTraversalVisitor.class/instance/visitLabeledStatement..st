visiting
visitLabeledStatement: aNode
	aNode label accept: self.
	aNode body accept: self