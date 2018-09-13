tests
testFinallyResolved
	| p resolveBlock didFinally |
	didFinally := false.
	p := HNPromise on: [ :accept | resolveBlock := [ accept value: 33 ] ].
	p finally: [ didFinally := true ].
	self deny: didFinally.
	resolveBlock  value.
	self assert: didFinally