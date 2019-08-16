visiting
visitLabeledStatement: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #label.
		self visitChildrenOf: aNode at: #body
	]