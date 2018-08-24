visiting
visitExportNamedDeclaration: aNode
	aNode declaration ifNotNil: [ :decl | decl accept: self ]