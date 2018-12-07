visiting
visitExportDefaultDeclaration: aNode
	self matcher processNode: aNode andTraverseChildrenWith:[
		self visitChildrenOf: aNode at: #declaration
	]