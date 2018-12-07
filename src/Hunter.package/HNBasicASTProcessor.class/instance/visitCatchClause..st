visiting
visitCatchClause: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #body.
		self visitChildrenOf: aNode at: #param
	]
