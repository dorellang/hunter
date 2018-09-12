tests
testThenCatchResolved
	| p resolveBlock thened |
	thened := false.
	p := HNPromise on: [ :resolve | resolveBlock := [ resolve value: 'doge' ] ].
	p then: [ :x | self assert: x equals: 'doge'. thened := true. ]
		catch: [ :x | self fail: 'shouldnt reach here' ].
	self deny: thened.
	resolveBlock value.
	self assert: thened.
