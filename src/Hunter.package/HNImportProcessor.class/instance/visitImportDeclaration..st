visiting
visitImportDeclaration: aNode
	program addRawDependency: aNode source value.
	aNode specifiers do: [ :spec | spec accept: self ]