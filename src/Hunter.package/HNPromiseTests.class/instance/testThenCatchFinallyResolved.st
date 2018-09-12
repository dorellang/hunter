tests
testThenCatchFinallyResolved
	| p resolveBlock thened finallied |
	thened := false.
	finallied := false.
	p := HNPromise on: [ :resolve | resolveBlock := [ resolve value: 'doge' ] ].
	p then: [ :x | self assert: x equals: 'doge'. thened := true. ]
		catch: [ :x | self fail: 'shouldnt reach here' ]
		finally: [ self assert: thened. finallied := true ].
	self deny: thened.
	self deny: finallied.
	resolveBlock value.
	self assert: thened.
	self assert: finallied.
