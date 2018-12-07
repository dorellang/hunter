hooks
handleEarlyTerminationFor: aPromise
	aPromise isHNPromise ifFalse: [ self rejectCombined. ^ self ].
	aPromise isResolved ifTrue: [ self rejectCombined ]