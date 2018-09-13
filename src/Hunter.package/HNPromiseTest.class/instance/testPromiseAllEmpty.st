tests
testPromiseAllEmpty
	| trace |
	(HNPromise all: {}) then: [ :result | trace := result ].
	self assert: trace asArray equals: {}