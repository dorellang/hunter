tests
testBasicResolve
	| p resolveBlock wasRun |
	wasRun := false.
	p := HNPromise on: [ :accept | resolveBlock := [ accept value: 42 ] ].
	self deny: wasRun.
	p then: [ :result | self assert: result equals: 42. wasRun := true ].
	resolveBlock value.
	self assert: wasRun