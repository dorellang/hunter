accessing - Hunter value
computedValue
	^ kind = 'const'
		ifTrue: [ initValue computedValue ]
		ifFalse: [ isAssigned
			ifTrue: [ HNRuntimeValue new computedValue  ]
			ifFalse: [ initValue computedValue ]
		]