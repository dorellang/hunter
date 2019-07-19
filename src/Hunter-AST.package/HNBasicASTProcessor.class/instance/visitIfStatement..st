visiting
visitIfStatement: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #test.
		self visitChildrenOf: aNode at: #consequent.
		self visitChildrenOf: aNode at: #alternate
	]