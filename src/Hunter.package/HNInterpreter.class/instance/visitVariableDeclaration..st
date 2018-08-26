visiting
visitVariableDeclaration: aVariableDeclaration
	aVariableDeclaration declarations do: [ :decl |
		| lhsVisitor |
		self interpretAndLink: decl init.
		lhsVisitor := HNLHSPatternVisitor new.
	]