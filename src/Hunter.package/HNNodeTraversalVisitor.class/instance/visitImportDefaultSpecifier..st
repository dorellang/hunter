visiting
visitImportDefaultSpecifier: aNode
	aNode local accept: self.
	aNode imported ifNotNil: [ :imported | imported accept: self ]