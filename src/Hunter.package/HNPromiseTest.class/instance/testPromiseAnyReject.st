tests
testPromiseAnyReject
	| p1 p2 rejectBlock trace |
	p1 := HNPromise reject: 'iie'.
	p2 := HNPromise on: [ :accept :reject | rejectBlock := [ reject value: #chigau ] ].
	(HNPromise any: { p1. p2 }) catch: [ :error | trace := error ].
	self assert: trace isNil.
	rejectBlock value.
	self assert: trace asArray equals: {'iie'. #chigau}