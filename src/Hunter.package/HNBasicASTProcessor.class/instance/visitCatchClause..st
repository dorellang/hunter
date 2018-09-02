visiting
visitCatchClause: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #body.
		self visitChildrenOf: aNode at: #param
	]
