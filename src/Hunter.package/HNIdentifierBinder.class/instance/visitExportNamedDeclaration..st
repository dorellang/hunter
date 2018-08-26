visiting
visitExportNamedDeclaration: aNode
	self checkScopeAtNode: aNode.
	aNode declaration ifNotNil: [ :decl | decl accept: self ]