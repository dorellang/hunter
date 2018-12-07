public
addInputPromise: aPromise
	noMoreInput ifTrue: [ ^ self ].
	inputPromises add: aPromise.
	self handleEarlyTerminationFor: aPromise.
	promiseCount := promiseCount + 1.
	promiseCount >= capacity ifTrue: [ self noMoreInputPromises ].