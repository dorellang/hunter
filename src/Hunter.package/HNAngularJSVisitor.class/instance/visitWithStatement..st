visiting
visitWithStatement: aNode
	aNode object accept: self.
	aNode body object accept: self