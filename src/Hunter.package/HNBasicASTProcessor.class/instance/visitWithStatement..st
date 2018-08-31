visiting
visitWithStatement: aNode
	self matcher processNode: aNode.
	aNode object accept: self.
	aNode body object accept: self