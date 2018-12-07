visiting
visitSwitchStatement: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #discriminant.
		self visitChildrenOf: aNode at: #cases
	]