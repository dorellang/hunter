tests
testNonePromiseHub
	| hub |
	self preparePromises.
	self testHub: (HNNonePromiseHub new: 3) with: { resolvingPromises }.
	self assert: result equals: 'rejected'.
	self cleanUp.

	hub := (HNNonePromiseHub new: 2).
	self preparePromises.
	self testHub: hub with: { rejectingPromises }.
	self assert: result isNil.
	self completePromises.
	self assert: result equals: 'resolved'.
	self cleanUp.

	self preparePromises.
	self testHub: (HNNonePromiseHub new: 5) with: { resolvingPromises. rejectingPromises }.
	self assert: result equals: 'rejected'.
	self cleanUp.