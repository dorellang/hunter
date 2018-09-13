tests
testPromiseRace
	| p1 p2 resolveBlock1 resolveBlock2 trace |
	p1 := HNPromise on: [ :resolve | resolveBlock1 := [ resolve value: 'one' ] ].
	p2 := HNPromise on: [ :resolve | resolveBlock2 := [ resolve value: 'two' ] ].

	(HNPromise race: { p1. p2. }) then: [ :result | trace := result ].
	self assert: trace isNil.
	resolveBlock2 value.
	self assert: trace equals: 'two'