visiting
visitExportSpecifier: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #exported.
		self visitChildrenOf: aNode at: #local
	]