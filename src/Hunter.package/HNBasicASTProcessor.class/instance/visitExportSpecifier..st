visiting
visitExportSpecifier: aNode
	self matcher processNode: aNode.
	aNode exported accept: self.
	aNode local accept: self