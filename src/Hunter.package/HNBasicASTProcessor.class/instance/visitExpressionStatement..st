visiting
visitExpressionStatement: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #expression
	]