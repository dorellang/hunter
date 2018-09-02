visiting
visitProperty: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #key.
		self visitChildrenOf: aNode at: #value
	]