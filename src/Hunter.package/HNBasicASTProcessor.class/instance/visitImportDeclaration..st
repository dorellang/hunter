visiting
visitImportDeclaration: aNode
	self matcher processNode: aNode.
	aNode specifiers do: [ :spec | spec accept: self ].
	aNode source accept: self