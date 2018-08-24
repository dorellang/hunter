visiting
visitSequenceExpression: aNode
	self checkScopeAtNode: aNode.
	aNode expressions do: [ :exp | exp accept: self ]