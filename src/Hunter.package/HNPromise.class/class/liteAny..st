instance creation
liteAny: aPromiseCollection
	"Like any: except you don't actually care about what resolved or rejected item. So you don't waste
	memory in collections you won't need."
	| rejectCount rejectCollectionSize resolved |
	aPromiseCollection ifEmpty: [ ^ self reject: nil ].
	rejectCollectionSize := aPromiseCollection size.
	rejectCount := 0.
	resolved := false.
	^ self on: [ :resolve :reject |
		aPromiseCollection withIndexDo: [ :promise :index |
			promise
				hnPromiseThen: [ :result | resolved ifFalse: [ resolve value: nil. resolved := true ] ]
				catch: [ :error |
					resolved ifFalse: [
						rejectCount := rejectCount + 1.
						(rejectCount = rejectCollectionSize)
							ifTrue: [ reject value: nil ].
				]
			]
		]
	]