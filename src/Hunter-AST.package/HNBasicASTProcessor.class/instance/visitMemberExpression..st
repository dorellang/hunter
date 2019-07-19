visiting
visitMemberExpression: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #object.
		self visitChildrenOf: aNode at: #computed
	]