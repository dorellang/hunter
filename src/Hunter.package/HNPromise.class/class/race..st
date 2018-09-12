instance creation
race: aPromiseCollection
	| completed |
	completed := false.
	^ self on: [ :resolve :reject |
		aPromiseCollection withIndexDo: [ :promise :index |
			promise hnPromiseThen: [ :result |
				completed ifFalse: [
					resolve value: result.
					completed := true
				]
			] catch: [ :error |
				completed ifFalse: [
					reject value: error.
					completed := true
				]
			]
		]
	]