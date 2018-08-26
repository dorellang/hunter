visiting
visitBinaryExpression: aNode
	aNode left accept: self.
	aNode right accept: self