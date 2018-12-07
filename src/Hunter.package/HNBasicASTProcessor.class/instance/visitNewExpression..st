visiting
visitNewExpression: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #callee.
		self visitChildrenOf: aNode at: #arguments
	]