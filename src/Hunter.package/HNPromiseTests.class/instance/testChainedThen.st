tests
testChainedThen
	| p acceptBlock1 acceptBlock2 finished |
	finished := false.
	p := HNPromise on: [ :accept | acceptBlock1 := [ accept value: 33 ] ].
	(((p then: [ :result | result + 9 ])
		then: [ :result |
			self assert: result equals: 42.
			HNPromise on: [ :accept |
				acceptBlock2 := [ accept value: result asString, ' - meaning of life' ]
			].
		])) then: [ :result |
			self assert: result equals: '42 - meaning of life'.
			finished := true 
		].
	acceptBlock1 value.
	self deny: finished.
	acceptBlock2 value.
	self assert: finished