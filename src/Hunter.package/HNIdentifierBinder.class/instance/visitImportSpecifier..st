visiting
visitImportSpecifier: aNode
	self checkScopeAtNode: aNode.
	aNode local accept: self