visiting
visitExportNamedDeclaration: aNode
	self matcher processNode: aNode.
	aNode declaration accept: self.
	aNode specifiers do: [ :spec | spec accept: self ].
	aNode source accept: self