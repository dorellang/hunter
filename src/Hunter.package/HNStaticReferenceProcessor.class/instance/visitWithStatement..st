visiting
visitWithStatement: aNode
	aNode object accept: self.
	aNode body accept: self