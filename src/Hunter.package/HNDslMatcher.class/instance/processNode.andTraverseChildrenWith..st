processing
processNode: aNode andTraverseChildrenWith: childTraversalBlock
	self createMatchesFor: aNode case: compiledDsl.
	childTraversalBlock value.
	self performPostTraversalFor: aNode case: compiledDsl