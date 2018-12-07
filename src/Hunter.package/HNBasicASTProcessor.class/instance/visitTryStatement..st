visiting
visitTryStatement: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #block.
		self visitChildrenOf: aNode at: #handler.
		self visitChildrenOf: aNode at: #finalizer
	]
