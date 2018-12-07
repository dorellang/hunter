tests
testPromiseLiteNoneEmpty
	| trace |
	(HNPromise liteNone: {}) then: [ :res | self assert: res isNil. trace := 'resolved' ].
	self assert: trace equals: 'resolved'