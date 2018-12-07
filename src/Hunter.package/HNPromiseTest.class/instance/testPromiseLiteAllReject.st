tests
testPromiseLiteAllReject
	| p1 p2 p3 rejectBlock trace |
	p1 := HNPromise resolve: 3.
	p2 := 42.
	p3 := HNPromise on: [ :resolve :reject | rejectBlock := [ reject value: 'foo' ] ].
	(HNPromise liteAll: { p1. p2. p3 }) catch: [ :error |
		self assert: error isNil. trace := 'rejected'
	].
	self assert: trace isNil.
	rejectBlock value.
	self assert: trace equals: 'rejected'