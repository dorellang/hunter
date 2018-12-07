initialization
setUpPromises
	matchedPromise := HNPromise on: [ :resolve :reject |
		resolveCb := resolve.
		rejectCb := reject
	].
	traversedPromise := HNPromise on: [ :res | traverseCb := res ].
	matchedPromise
		then: [ :_ | case resolveActions do: [ :a | a hnCull: node cull: context ] ]
		catch: [ :_ | case rejectActions do: [ :a | a hnCull: node cull: context ] ]
		finally: [ case finallyActions do: [ :a | a hnCull: node cull: context ] ].
	(HNPromise liteAll: { matchedPromise. traversedPromise })
		then: [ :_ | case postTraversalResolveActions do: [ :a | a hnCull: node cull: context ] ]
		catch: [ :_ | case postTraversalRejectActions do: [ :a | a hnCull: node cull: context ] ]
		finally: [ case postTraversalFinallyActions do: [ :a | a hnCull: node cull: context ] ].
	donePromise := self hasPostTraversalActions
		ifTrue: [ HNPromise liteAll: { matchedPromise. traversedPromise } ]
		ifFalse: [ matchedPromise ]