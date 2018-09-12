tests
testFinallyDelaysPromise
	| p completeFinally finished |
	finished := false.
	p := HNPromise resolve: 'goku'.
	(p finally: [ HNPromise on: [ :resolve | completeFinally := [ resolve value: 'vegeta' ] ] ])
		then: [ :result | self assert: result equals: 'goku'. finished := true ].
	self deny: finished.
	completeFinally value.
	self assert: finished