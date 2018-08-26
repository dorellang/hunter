visiting
visitArrayExpression: aNode
	self checkScopeAtNode: aNode.
	aNode elements reject: #isNil thenDo: [ :el | el accept: self ]