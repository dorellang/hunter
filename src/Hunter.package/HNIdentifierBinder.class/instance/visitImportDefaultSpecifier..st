visiting
visitImportDefaultSpecifier: aNode
	self checkScopeAtNode: aNode.
	aNode local accept: self