private
whenHNPromiseRejected: oneArgBlock
	self isCompleted ifFalse: [ rejectedCbs add: oneArgBlock. ^ self ].
	self isResolved ifTrue: [ ^ self ].
	oneArgBlock value: error.