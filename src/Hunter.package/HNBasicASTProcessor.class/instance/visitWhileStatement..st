visiting
visitWhileStatement: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #test.
		self visitChildrenOf: aNode at: #body
	]