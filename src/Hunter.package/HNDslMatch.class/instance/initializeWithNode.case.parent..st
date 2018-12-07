initialization
initializeWithNode: aNode case: aCase parent: aParentMatch
	node := aNode.
	case := aCase.
	parent := aParentMatch.
	parent ifNotNil: [
		context := case makeContextWithParent: parent context
	].
	self setUpPromises.
	self setUpPromiseHubs