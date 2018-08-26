visiting
visitFunctionDeclaration: aNode
	aNode id ifNotNil: [ :id | id accept: self ].
	self checkScopeAtNode: aNode.
	self handleFunctionLikeNode: aNode