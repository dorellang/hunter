visiting
visitExportDefaultDeclaration: aNode
	self checkScopeAtNode: aNode.
	aNode declaration accept: self