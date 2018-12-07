public
noMoreInputPromises
	| p |
	combined isCompleted ifTrue: [ ^ self ].
	p := self combinePromises.
	self cleanUp.
	p then: [ :_ | resolveCb value: nil ] catch: [ :_ | rejectCb value: nil ]