visiting
visitExportDefaultDeclaration: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #declaration
	]