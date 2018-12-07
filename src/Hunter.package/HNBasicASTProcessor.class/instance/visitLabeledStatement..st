visiting
visitLabeledStatement: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #label.
		self visitChildrenOf: aNode at: #body
	]