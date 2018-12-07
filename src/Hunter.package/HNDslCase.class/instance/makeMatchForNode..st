match creation
makeMatchForNode: aNode
	^ parent ifNil: [ HNDslMatch withNode: aNode rootCase: self ]
		ifNotNil: [ HNDslMatch withNode: aNode case: self parent: parent lastMatch ]