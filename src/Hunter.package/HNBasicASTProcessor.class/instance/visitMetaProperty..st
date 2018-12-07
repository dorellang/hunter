visiting
visitMetaProperty: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #meta.
		self visitChildrenOf: aNode at: #property
	]
