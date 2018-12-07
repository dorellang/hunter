hooks
handleEarlyTerminationFor: aPromise
	aPromise isHNPromise ifFalse: [ self resolveCombined. ^ self ].
	aPromise isResolved ifTrue: [ self resolveCombined ]