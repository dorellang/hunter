tests
testThenCatchFinallyRejected
	| p rejectBlock catched finallied |
	catched := false.
	finallied := false.
	p := HNPromise on: [ :resolve :reject | rejectBlock := [ reject value: 'foo' ] ].
	p then: [ :x | self fail: 'shouldnt reach here' ]
		catch: [ :x | self assert: x equals: 'foo'. catched := true. ]
		finally: [ self assert: catched. finallied := true ].
	self deny: catched.
	self deny: finallied.
	rejectBlock value.
	self assert: catched.
	self assert: finallied.
