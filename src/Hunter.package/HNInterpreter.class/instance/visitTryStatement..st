visiting
visitTryStatement: aTryStatement
	aTryStatement block accept: self.
	aTryStatement handler ifNotNil: [ :catch | catch accept: self ].
	aTryStatement finalizer ifNotNil: [ :finally | finally accept: self ].