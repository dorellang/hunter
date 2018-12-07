tests
testPromiseLiteNone
	| p1 p2 p3 rejectBlock trace |
	p1 := HNPromise reject: 'no'.
	p2 := HNPromise on: [ :resolve :reject | rejectBlock := [ reject value: 'dos' ] ].
	p3 := HNPromise reject: 'nein'.

	(HNPromise liteNone: { p1. p2. p3 }) then: [ :res | self assert: res isNil. trace := 'resolved' ].
	self assert: trace isNil.
	rejectBlock value.
	self assert: trace equals: 'resolved'