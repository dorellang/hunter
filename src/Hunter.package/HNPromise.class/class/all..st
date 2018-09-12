instance creation
all: aPromiseCollection
	| resolveCount resultCollection rejected |
	aPromiseCollection ifEmpty: [ ^ self resolve: {} ].
	resultCollection := Array new: aPromiseCollection size.
	resolveCount := 0.
	rejected := false.
	^ self on: [ :resolve :reject |
		aPromiseCollection withIndexDo: [ :promise :index |
			promise hnPromiseThen: [ :result |
				rejected ifFalse: [
					resultCollection at: index put: result.
					resolveCount := resolveCount + 1.
					(resolveCount = resultCollection size)
						ifTrue: [ resolve value: resultCollection ].
				]
			] catch: [ :error | rejected ifFalse: [ reject value: error. rejected := true ] ]
		]
	]