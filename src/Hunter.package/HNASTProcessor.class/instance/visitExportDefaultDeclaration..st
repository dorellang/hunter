visiting
visitExportDefaultDeclaration: aNode
	self matcher processNode: aNode.
	aNode declaration accept: self