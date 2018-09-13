tests
testPromiseAnyUnwrappedValue
	| p1 p2 resolveBlock trace |
	p1 := #unwrapped.
	p2 := HNPromise on: [ :resolve | resolveBlock := [ resolve value: 'two' ] ].

	(HNPromise any: { p1. p2. }) then: [ :result | trace := result ].
	self assert: trace equals: #unwrapped.
	resolveBlock value.
	self assert: trace equals: #unwrapped