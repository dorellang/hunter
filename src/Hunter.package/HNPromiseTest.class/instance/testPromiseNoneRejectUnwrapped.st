tests
testPromiseNoneRejectUnwrapped
	| p1 p2 resolveBlock trace |
	p1 := #foo.
	p2 := HNPromise on: [ :resolve :reject | resolveBlock := [ resolve value: #bar ] ].
	(HNPromise none: {p1. p2}) catch: [ :result | self assert: trace isNil. trace := result ].
	self assert: trace equals: #foo.
	resolveBlock value.
	self assert: trace equals: #foo.	
	