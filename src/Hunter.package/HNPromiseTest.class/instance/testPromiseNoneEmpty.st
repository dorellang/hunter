tests
testPromiseNoneEmpty
	| trace |
	(HNPromise none: {}) then: [ :result | trace := result ].
	self assert: trace asArray equals: {}