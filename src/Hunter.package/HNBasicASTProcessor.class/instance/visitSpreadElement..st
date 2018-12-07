visiting
visitSpreadElement: aNode
	self matcher processNode: aNode andTraverseChildrenWith: [
		self visitChildrenOf: aNode at: #argument
	]