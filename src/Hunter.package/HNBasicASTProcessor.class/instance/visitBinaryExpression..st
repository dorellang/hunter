visiting
visitBinaryExpression: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #left.
		self visitChildrenOf: aNode at: #right.
	]
