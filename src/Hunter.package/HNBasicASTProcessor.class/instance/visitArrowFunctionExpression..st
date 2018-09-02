visiting
visitArrowFunctionExpression: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #params.
		self visitChildrenOf: aNode at: #body
	]