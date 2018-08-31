visiting
visitConditionalExpression: aNode
	self matcher processNode: aNode.
	aNode test accept: self.
	aNode consequent accept: self.
	aNode alternate accept: self