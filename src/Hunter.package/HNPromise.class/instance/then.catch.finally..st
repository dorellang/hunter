chaining
then: thenBlock catch: catchBlock finally: finallyBlock
	^ self species on: [ :accept :reject |
		self whenHNPromiseResolved: [ :x |
			finallyBlock accessItem: x afterHNPromiseCallback: thenBlock resolve: accept reject: reject
		].
		self whenHNPromiseRejected: [ :x |
			finallyBlock accessItem: x afterHNPromiseCallback: catchBlock resolve: accept reject: reject
		].
	]