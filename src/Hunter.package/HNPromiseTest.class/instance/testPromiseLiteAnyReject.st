tests
testPromiseLiteAnyReject
	| p1 p2 rejectBlock trace |
	p1 := HNPromise reject: 'iie'.
	p2 := HNPromise on: [ :accept :reject | rejectBlock := [ reject value: #chigau ] ].
	(HNPromise liteAny: { p1. p2 }) catch: [ :err | self assert: err isNil. trace := 'rejected' ].
	self assert: trace isNil.
	rejectBlock value.
	self assert: trace equals: 'rejected'