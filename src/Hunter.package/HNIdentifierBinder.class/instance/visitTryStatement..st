visiting
visitTryStatement: aNode
	self checkScopeAtNode: aNode.
	aNode block accept: self.
	aNode handler ifNotNil: [ :handler | handler accept: self ].
	aNode finalizer ifNotNil: [ :finalizer | finalizer accept: self ]
