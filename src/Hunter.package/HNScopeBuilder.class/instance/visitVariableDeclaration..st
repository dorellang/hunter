visiting
visitVariableDeclaration: aNode
	| bindingScope isVarDecl |
	isVarDecl := aNode kind = 'var'.
	bindingScope := isVarDecl ifTrue: [ scope bindingNonBlockScope ] ifFalse: [ scope ].
	aNode declarations do: [ :decl |
		decl init ifNotNil: [ :init | init accept: self ].
		isVarDecl
			ifTrue: [ self handleHoistDeclarationLValue: decl id withScope: bindingScope ]
			ifFalse: [ self handleDeclarationLValue: decl id withScope: bindingScope ].
	]