visiting
visitMemberExpression: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #object.
		self visitChildrenOf: aNode at: #property
	]