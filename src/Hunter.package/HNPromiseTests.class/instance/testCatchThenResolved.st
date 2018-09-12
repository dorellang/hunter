tests
testCatchThenResolved
	| p finished |
	finished := false.
	p := HNPromise resolve: 33.
	(((p then: [ :result | result + 9 ])
		catch: [ :error |
			self fail: 'shouldnt reach here'
		])) then: [ :result |
			self assert: result equals: 42.
			finished := true 
		].
	self assert: finished