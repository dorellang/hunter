visiting
visitExpressionStatement: aNode
	self matcher processNode: aNode.
	aNode expression accept: self