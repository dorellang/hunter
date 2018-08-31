visiting
visitImportNamespaceSpecifier: aNode
	self matcher processNode: aNode.
	aNode local accept: self.
	aNode imported ifNotNil: [ :imported | imported accept: self ]