visiting
visitImportNamespaceSpecifier: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #local.
		self visitChildrenOf: aNode at: #imported
	]