visiting
visitExportNamedDeclaration: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #declaration.
		self visitChildrenOf: aNode at: #specifiers.
		self visitChildrenOf: aNode at: #source
	]