visiting
visitFunctionDeclaration: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #id.
		self visitChildrenOf: aNode at: #params.
		self visitChildrenOf: aNode at: #body
	]