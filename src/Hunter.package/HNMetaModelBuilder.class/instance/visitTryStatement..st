visiting
visitTryStatement: aTryStatement
	aTryStatement block accept: self.
	aTryStatement handler ifNotNil: [ :handler | handler accept: self ].
	aTryStatement finalizer ifNotNil: [ :finalizer | finalizer accept: self]
	
