visiting
visitTryStatement: aNode
	self matcher processNode: aNode.
	aNode block accept: self.
	aNode handler ifNotNil: [ :handler | handler accept: self ].
	aNode finalizer ifNotNil: [ :finalizer | finalizer accept: self ]