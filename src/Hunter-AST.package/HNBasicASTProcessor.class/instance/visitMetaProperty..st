visiting
visitMetaProperty: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #meta.
		self visitChildrenOf: aNode at: #property
	]
