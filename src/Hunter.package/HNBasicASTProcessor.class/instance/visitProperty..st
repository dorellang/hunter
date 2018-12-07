visiting
visitProperty: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #key.
		self visitChildrenOf: aNode at: #value
	]