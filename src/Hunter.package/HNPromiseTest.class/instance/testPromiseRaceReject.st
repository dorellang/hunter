tests
testPromiseRaceReject
	| p1 p2 rejectBlock trace |
	p1 := HNPromise on: [ :resolve :reject | rejectBlock := [ reject value: 'pearl jam' ] ].
	p2 := HNPromise on: [ ].

	(HNPromise race: { p1. p2. }) catch: [ :error | trace := error ].
	self assert: trace isNil.
	rejectBlock value.
	self assert: trace equals: 'pearl jam'