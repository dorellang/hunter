accessing
scopeFromExactNode: anASTNode ifNotFound: fallbackBlock
	^ nodeToScopeDict at: anASTNode ifAbsent: (fallbackBlock cull: anASTNode)