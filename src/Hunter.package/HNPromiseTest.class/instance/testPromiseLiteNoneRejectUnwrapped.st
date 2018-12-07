tests
testPromiseLiteNoneRejectUnwrapped
	| p1 p2 resolveBlock trace |
	p1 := #foo.
	p2 := HNPromise on: [ :resolve :reject | resolveBlock := [ resolve value: #bar ] ].
	(HNPromise liteNone: {p1. p2}) catch: [ :res |
		self assert: res isNil. self assert: trace isNil. trace := 'rejected'
	].
	self assert: trace equals: 'rejected'.
	resolveBlock value.
	self assert: trace equals: 'rejected'.	
	