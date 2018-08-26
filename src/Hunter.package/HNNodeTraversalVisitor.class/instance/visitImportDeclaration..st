visiting
visitImportDeclaration: aNode
	aNode specifiers do: [ :spec | spec accept: self ].
	aNode source accept: self