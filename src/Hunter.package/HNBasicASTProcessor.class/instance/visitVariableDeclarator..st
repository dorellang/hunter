visiting
visitVariableDeclarator: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #init.
		self visitChildrenOf: aNode at: #id
	]