visiting
visitArrayExpression: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #elements
	]
	