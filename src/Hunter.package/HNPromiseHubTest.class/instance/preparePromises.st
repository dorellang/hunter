helpers
preparePromises
	promiseCbs := OrderedCollection new.
	resolvingPromises := {
		HNPromise resolve: 4. HNPromise on: [ :res | promiseCbs add: res ]. 5
	}.
	rejectingPromises := {
		HNPromise reject: 666. HNPromise on: [ :res :rej | promiseCbs add: rej ]
	}
