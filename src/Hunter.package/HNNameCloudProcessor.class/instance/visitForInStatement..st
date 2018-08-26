visiting
visitForInStatement: aNode
	aNode right accept: self.
	aNode left accept: self.
	aNode body accept: self