visiting
visitVariableDeclaration: aNode
	self matcher processNode: aNode.
	aNode declarations do: [ :decl | decl accept: super ]