visiting
visitWhileStatement: aNode
	aNode test accept: self.
	aNode body accept: self