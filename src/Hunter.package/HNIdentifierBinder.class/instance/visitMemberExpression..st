visiting
visitMemberExpression: aNode
	self checkScopeAtNode: aNode.
	aNode object accept: self.
	aNode computed ifTrue: [ aNode property accept: self ]