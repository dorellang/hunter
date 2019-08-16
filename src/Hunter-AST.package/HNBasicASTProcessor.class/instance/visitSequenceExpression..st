visiting
visitSequenceExpression: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #expressions
	]