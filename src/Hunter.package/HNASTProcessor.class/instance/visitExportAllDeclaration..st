visiting
visitExportAllDeclaration: aNode
	self matcher processNode: aNode.
	aNode accept: self