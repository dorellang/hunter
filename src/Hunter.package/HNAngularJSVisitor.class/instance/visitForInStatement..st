visiting
visitForInStatement: aNode
	aNode left accept: self.
	aNode right accept: self