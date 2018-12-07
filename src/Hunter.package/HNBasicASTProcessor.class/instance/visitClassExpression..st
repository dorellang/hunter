visiting
visitClassExpression: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #id.
		self visitChildrenOf: aNode at: #superClass.
		self visitChildrenOf: aNode at: #body
	]