visiting
visitImportSpecifier: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #local.
		self visitChildrenOf: aNode at: #imported
	]