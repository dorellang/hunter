visiting
visitForOfStatement: aNode
	self matcher processNode: aNode.
	aNode left accept: self.
	aNode right accept: self.
	aNode body accept: self