visiting
visitSwitchStatement: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #discriminant.
		self visitChildrenOf: aNode at: #cases
	]