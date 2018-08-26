visiting
visitImportNamespaceSpecifier: aNode
	aNode local accept: self.
	aNode imported ifNotNil: [ :imported | imported accept: self ]