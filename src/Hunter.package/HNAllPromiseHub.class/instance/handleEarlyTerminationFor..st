hooks
handleEarlyTerminationFor: aPromise
	aPromise isHNPromise ifFalse: [ ^ self ].
	aPromise isRejected ifTrue: [ self rejectCombined ]