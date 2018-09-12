private
whenHNPromiseResolved: oneArgBlock
	self isCompleted ifFalse: [ resolvedCbs add: oneArgBlock. ^self ].
	self isRejected ifTrue: [ ^ self ].
	oneArgBlock value: result.