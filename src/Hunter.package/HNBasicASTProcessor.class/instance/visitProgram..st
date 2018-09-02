visiting
visitProgram: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #body
	]