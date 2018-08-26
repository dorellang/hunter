visiting
visitVariableDeclarator: decl
	decl init ifNotNil: [ :init | init accept: self ].
	self handleDeclarationLValue: decl id
