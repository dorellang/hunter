instance creation
none: aPromiseCollection
	| rejectCount rejectCollection rejected |
	aPromiseCollection ifEmpty: [ ^ self resolve: {} ].
	rejectCollection := Array new: aPromiseCollection size.
	rejectCount := 0.
	rejected := false.
	^ self on: [ :resolve :reject |
		aPromiseCollection withIndexDo: [ :promise :index |
			promise
				hnPromiseThen: [ :result | rejected ifFalse: [ reject value: result. rejected := true ] ]
				catch: [ :error |
					rejected ifFalse: [
						rejectCollection at: index put: error.
						rejectCount := rejectCount + 1.
						(rejectCount = rejectCollection size)
							ifTrue: [ resolve value: rejectCollection ].
				]
			]
		]
	]