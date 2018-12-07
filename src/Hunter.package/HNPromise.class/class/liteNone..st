instance creation
liteNone: aPromiseCollection
	"Like none: except you don't actually care about what resolved or rejected item. So you don't waste
	memory in collections you won't need."
	| rejectCount rejectCollectionSize rejected |
	aPromiseCollection ifEmpty: [ ^ self resolve: nil ].
	rejectCollectionSize := aPromiseCollection size.
	rejectCount := 0.
	rejected := false.
	^ self on: [ :resolve :reject |
		aPromiseCollection withIndexDo: [ :promise :index |
			promise
				hnPromiseThen: [ :result | rejected ifFalse: [ reject value: nil. rejected := true ] ]
				catch: [ :error |
					rejected ifFalse: [
						rejectCount := rejectCount + 1.
						(rejectCount = rejectCollectionSize)
							ifTrue: [ resolve value: nil ].
				]
			]
		]
	]