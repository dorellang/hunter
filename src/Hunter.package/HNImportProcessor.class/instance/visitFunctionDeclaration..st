visiting
visitFunctionDeclaration: aNode
	aNode id ifNotNil: [ :id | id accept: self ].
	self handleFunctionLikeNode: aNode