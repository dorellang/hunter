visiting
visitDoWhileStatement: aNode
	aNode test accept: self.
	aNode body accept: self