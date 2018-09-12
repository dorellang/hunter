tests
testPromiseAll
	| p1 p2 p3 resolveBlock trace |
	p1 := HNPromise resolve: 3.
	p2 := 42.
	p3 := HNPromise on: [ :resolve :reject | resolveBlock := [ resolve value: 'foo' ] ].
	(HNPromise all: { p1. p2. p3 }) then: [ :result | trace := result ].
	self assert: trace isNil.
	resolveBlock value.
	self assert: trace asArray equals: { 3. 42. 'foo' }