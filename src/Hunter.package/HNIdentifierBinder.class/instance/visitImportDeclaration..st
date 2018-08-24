visiting
visitImportDeclaration: aNode
	self checkScopeAtNode: aNode.
	aNode specifiers do: [ :spec | spec accept: self ]