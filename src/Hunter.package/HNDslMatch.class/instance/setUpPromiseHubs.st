initialization
setUpPromiseHubs
	promiseHub := case promiseHubClass
		"1 for dependency on my parent, 1 promise for each predicate and 1 for each subcase group"
		new: 1 + case predicates size + case subcaseGroups size.
	groupPromiseHubs := case subcaseGroups collect: [ :assoc | 
		| promiseHubClass groupSize |
		promiseHubClass := assoc key.
		groupSize := assoc value.
		promiseHubClass new: groupSize
	].
	parent ifNotNil: [ "ugly af I know!!"
		promiseHub addInputPromise:
			(case parentDependency makePromiseWithParent: parent)
	] ifNil: [ promiseHub addInputPromise: (HNPromise resolve: nil) ].
	case caseGroup ifNotNil: [ parent ifNotNil: [ parent addToGroup: case caseGroup with: matchedPromise ] ].
	groupPromiseHubs collect: #promisesCombined thenDo: [ :p | promiseHub addInputPromise: p ].
	promiseHub promisesCombined then: [ :_ | resolveCb value: nil ]
		catch: [ :_ | rejectCb value: nil ]