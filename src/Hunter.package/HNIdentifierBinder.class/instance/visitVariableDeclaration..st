visiting
visitVariableDeclaration: aNode
	self checkScopeAtNode: aNode.
	aNode declarations do: [ :decl |
		decl init ifNotNil: [ :init | init accept: self ].
		self handleDeclarationLValue: decl id
	]