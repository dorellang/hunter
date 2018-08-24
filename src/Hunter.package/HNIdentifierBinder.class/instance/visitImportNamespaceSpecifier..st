visiting
visitImportNamespaceSpecifier: aNode
	self checkScopeAtNode: aNode.
	aNode local accept: self