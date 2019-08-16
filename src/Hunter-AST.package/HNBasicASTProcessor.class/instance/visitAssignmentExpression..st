visiting
visitAssignmentExpression: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #left.
		self visitChildrenOf: aNode at: #right
	]