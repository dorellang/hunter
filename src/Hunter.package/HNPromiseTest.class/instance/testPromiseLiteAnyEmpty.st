tests
testPromiseLiteAnyEmpty
	| trace |
	(HNPromise liteAny: {}) catch: [ :error | self assert: error isNil. trace := 'rejected' ].
	self assert: trace equals: 'rejected'