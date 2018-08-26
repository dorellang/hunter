accessing
scopeFromNode: anASTNode
	^ nodeToScopeDict at: anASTNode ifAbsent: [ self scopeFromNode: anASTNode parent ]