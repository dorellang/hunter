visiting
visitVariableDeclaration: aNode
	aNode declarations do: [ :decl | decl accept: self ]