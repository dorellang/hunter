tests
testThenCatchRejected
	| p rejectBlock catched |
	catched := false.
	p := HNPromise on: [ :resolve :reject | rejectBlock := [ reject value: 'foo' ] ].
	p then: [ :x | self fail: 'shouldnt reach here' ]
		catch: [ :x | self assert: x equals: 'foo'. catched := true. ].
	self deny: catched.
	rejectBlock value.
	self assert: catched.