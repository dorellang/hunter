tests
testPromiseLiteAllEmpty
	| trace |
	(HNPromise liteAll: {}) then: [ :result | self assert: result isNil. trace := 'resolved' ].
	self assert: trace equals: 'resolved'