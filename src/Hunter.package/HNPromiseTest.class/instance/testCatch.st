tests
testCatch
	| p rejectBlock accepted finished |
	accepted := false.
	finished := false.
	p := HNPromise on: [ :accept :reject | rejectBlock := [ reject value: 'foo' ] ].
	((p then: [ :result | accepted := true. result + 9 ])
		catch: [ :error |
			self assert: error equals: 'foo'.
			self deny: accepted.
			finished := true.
		]).
	self deny: finished.
	self deny: accepted.
	rejectBlock value.
	self deny: accepted.
	self assert: finished.