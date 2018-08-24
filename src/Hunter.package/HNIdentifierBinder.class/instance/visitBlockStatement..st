visiting
visitBlockStatement: aNode
	self checkScopeAtNode: aNode.
	aNode body do: [ :stmt | stmt accept: self ]