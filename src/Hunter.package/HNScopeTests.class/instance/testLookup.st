tests
testLookup
	rootScope declareAndMark: 'foo'; declareAndMark: 'bar'; declareAndMark: 'baz';
		bind: 'foo' to: 'foo';
		bind: 'bar' to: 'bar';
		hoistBind: 'baz' to: 'baz'.

	self assert: (rootScope lookup: 'baz' occurringBefore: 2) equals: 'baz'.
	self assert: (rootScope lookup: 'foo' occurringBefore: 2) equals: 'foo'.
	self should: [rootScope lookup: 'bar' occurringBefore: 2] raise: Error.
	self assert: (rootScope lookup: 'baz' occurringBefore: 3) equals: 'baz'.
	self assert: (rootScope lookup: 'foo' occurringBefore: 3) equals: 'foo'.
	self assert: (rootScope lookup: 'bar' occurringBefore: 3) equals: 'bar'.