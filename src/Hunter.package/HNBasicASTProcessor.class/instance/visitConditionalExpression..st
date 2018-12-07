visiting
visitConditionalExpression: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #test.
		self visitChildrenOf: aNode at: #consequent.
		self visitChildrenOf: aNode at: #alternate
	]