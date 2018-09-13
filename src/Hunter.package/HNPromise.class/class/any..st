instance creation
any: aPromiseCollection
	| rejectCount rejectCollection resolved |
	aPromiseCollection ifEmpty: [ ^ self reject: {} ].
	rejectCollection := Array new: aPromiseCollection size.
	rejectCount := 0.
	resolved := false.
	^ self on: [ :resolve :reject |
		aPromiseCollection withIndexDo: [ :promise :index |
			promise
				hnPromiseThen: [ :result | resolved ifFalse: [ resolve value: result. resolved := true ] ]
				catch: [ :error |
					resolved ifFalse: [
						rejectCollection at: index put: error.
						rejectCount := rejectCount + 1.
						(rejectCount = rejectCollection size)
							ifTrue: [ reject value: rejectCollection ].
				]
			]
		]
	]