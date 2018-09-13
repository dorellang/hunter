tests
testPromiseNone
	| p1 p2 p3 rejectBlock trace |
	p1 := HNPromise reject: 'no'.
	p2 := HNPromise on: [ :resolve :reject | rejectBlock := [ reject value: 'dos' ] ].
	p3 := HNPromise reject: 'nein'.

	(HNPromise none: { p1. p2. p3 }) then: [ :result | trace := result ].
	self assert: trace isNil.
	rejectBlock value.
	self assert: trace equals: {'no'. 'dos'. 'nein'}