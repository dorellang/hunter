visiting
visitDoWhileStatement: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #test.
		self visitChildrenOf: aNode at: #body
	]