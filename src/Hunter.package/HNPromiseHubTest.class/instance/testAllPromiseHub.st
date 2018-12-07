tests
testAllPromiseHub
	| hub |
	hub := HNAllPromiseHub new: 3.
	self preparePromises.
	self testHub: hub with: { resolvingPromises }.
	self assert: result isNil.
	self completePromises.
	self assert: result equals: 'resolved'.
	self cleanUp.

	self preparePromises.
	self testHub: (HNAllPromiseHub new: 2) with: { rejectingPromises }.
	self assert: result equals: 'rejected'.
	self cleanUp.

	self preparePromises.
	self testHub: (HNAllPromiseHub new: 5) with: { resolvingPromises. rejectingPromises }.
	self assert: result equals: 'rejected'.
	self cleanUp.