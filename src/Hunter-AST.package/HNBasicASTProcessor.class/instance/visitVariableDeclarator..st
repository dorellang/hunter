visiting
visitVariableDeclarator: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #init.
		self visitChildrenOf: aNode at: #id
	]