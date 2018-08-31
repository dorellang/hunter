visiting
visitAssignmentPattern: aNode
	self matcher processNode: aNode.
	aNode left accept: self.
	aNode right accept: self