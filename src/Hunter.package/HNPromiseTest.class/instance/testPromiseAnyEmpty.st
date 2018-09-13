tests
testPromiseAnyEmpty
	| trace |
	(HNPromise any: {}) catch: [ :error | trace := error ].
	self assert: trace asArray equals: {}