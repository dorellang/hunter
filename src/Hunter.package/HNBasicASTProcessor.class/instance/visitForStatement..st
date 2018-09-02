visiting
visitForStatement: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #init.
		self visitChildrenOf: aNode at: #test.
		self visitChildrenOf: aNode at: #update.
		self visitChildrenOf: aNode at: #body
	]