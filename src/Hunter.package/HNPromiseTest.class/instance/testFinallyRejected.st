tests
testFinallyRejected
	| p resolveBlock didFinally |
	didFinally := false.
	p := HNPromise on: [ :reject | resolveBlock := [ reject value: 33 ] ].
	p finally: [ didFinally := true ].
	self deny: didFinally.
	resolveBlock  value.
	self assert: didFinally