visiting
visitObjectPattern: aNode
	self checkScopeAtNode: aNode.
	aNode properties do: [ :p | p value accept: self ]
