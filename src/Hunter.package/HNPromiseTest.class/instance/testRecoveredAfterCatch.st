tests
testRecoveredAfterCatch
	| p catched finished |
	catched := false.
	finished := false.
	p := HNPromise reject: 33.
	(((p then: [ :result | self fail: 'shouldnt reach here'. result + 9 ])
		catch: [ :error |
			self assert: error equals: 33.
			catched := true.
		])) then: [ :result | finished := true ].
	self assert: catched.
	self assert: finished