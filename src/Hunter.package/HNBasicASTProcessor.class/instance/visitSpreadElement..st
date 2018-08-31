visiting
visitSpreadElement: aNode
	self matcher processNode: aNode.
	aNode argument accept: self