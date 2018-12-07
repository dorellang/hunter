visiting
visitVariableDeclaration: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #declarations
	]