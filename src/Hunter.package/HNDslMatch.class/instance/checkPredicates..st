notifying
checkPredicates: predicates
	predicates do: [ :aPredicate |
		| aPromise |
		aPromise := (aPredicate hnCull: node cull: context) ifTrue: [ HNPromise resolve: nil ]
			ifFalse: [ HNPromise reject: nil ].
		promiseHub addInputPromise: aPromise.
		promiseHub promisesCombined isCompleted ifTrue: [ ^ self ]
	]