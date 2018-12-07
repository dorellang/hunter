initialization
initializeWithCapacity: anInteger
	inputPromises := OrderedCollection new: anInteger * 2 + 1.
	capacity := anInteger.
	promiseCount := 0.
	noMoreInput := false.
	combined := HNPromise on: [ :res :rej |
		resolveCb := res.
		rejectCb := rej
	]