tests
testPromiseAny
	| p1 p2 resolveBlock2 trace |
	p1 := HNPromise reject: 'no'.
	p2 := HNPromise on: [ :resolve | resolveBlock2 := [ resolve value: 'dos' ] ].

	(HNPromise any: { p1. p2. }) then: [ :result | trace := result ].
	self assert: trace isNil.
	resolveBlock2 value.
	self assert: trace equals: 'dos'