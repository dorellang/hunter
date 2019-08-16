visiting
visitNewExpression: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #callee.
		self visitChildrenOf: aNode at: #arguments
	]