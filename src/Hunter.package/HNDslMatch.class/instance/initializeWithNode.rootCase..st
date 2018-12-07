initialization
initializeWithNode: aNode rootCase: aCase
	node := aNode.
	case := aCase.
	context := case makeRootContext.
	self setUpPromises.
	self setUpPromiseHubs