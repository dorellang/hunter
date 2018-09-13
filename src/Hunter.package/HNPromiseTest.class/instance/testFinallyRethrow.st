tests
testFinallyRethrow
	| p completeFinally finished |
	finished := false.
	p := HNPromise reject: 'yamcha'.
	(p finally: [ HNPromise on: [ :_ :reject | completeFinally := [ reject value: 'krilin' ] ] ])
		catch: [ :error | self assert: error equals: 'krilin'. finished := true ].
	self deny: finished.
	completeFinally value.
	self assert: finished