visiting
visitVariableDeclarator: aNode
	self matcher processNode: aNode.
	aNode init ifNotNil: [ :init | init accept: self ].
	aNode id accept: self