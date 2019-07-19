visiting
visitExportSpecifier: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #exported.
		self visitChildrenOf: aNode at: #local
	]