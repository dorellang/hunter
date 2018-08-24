visiting
visitVariableDeclarator: aNode
	aNode id accept: self.
	aNode init ifNotNil: [ :init | init accept: self ]