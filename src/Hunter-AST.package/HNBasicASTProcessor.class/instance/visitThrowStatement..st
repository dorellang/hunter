visiting
visitThrowStatement: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #argument
	]