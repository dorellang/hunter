tests
testPromiseLiteAll
	| p1 p2 p3 resolveBlock trace |
	p1 := HNPromise resolve: 3.
	p2 := 42.
	p3 := HNPromise on: [ :resolve :reject | resolveBlock := [ resolve value: 'foo' ] ].
	(HNPromise liteAll: { p1. p2. p3 }) then: [ :result |
		self assert: result isNil. trace := 'resolved'
	].
	self assert: trace isNil.
	resolveBlock value.
	self assert: trace equals: 'resolved'