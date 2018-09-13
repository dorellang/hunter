tests
testThenAfterAccept
	| p |
	p := HNPromise on: [ :accept | accept value: 'foo' ].
	p then: [ :result | self assert: result equals: 'foo'. ^self ].
	self fail: 'should not reach here'.