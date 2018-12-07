instance creation
liteAll: aPromiseCollection
	"Like all: except you don't actually care about what resolved or rejected item. So you don't waste
	memory in collections you won't need."
	| resolveCount collectionSize rejected |
	aPromiseCollection ifEmpty: [ ^ self resolve: nil ].
	collectionSize := aPromiseCollection size.
	resolveCount := 0.
	rejected := false.
	^ self on: [ :resolve :reject |
		aPromiseCollection withIndexDo: [ :promise :index |
			promise hnPromiseThen: [ :result |
				rejected ifFalse: [
					resolveCount := resolveCount + 1.
					(resolveCount = collectionSize)
						ifTrue: [ resolve value: nil ].
				]
			] catch: [ :error | rejected ifFalse: [ reject value: nil. rejected := true ] ]
		]
	]