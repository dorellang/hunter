visiting
visitObjectExpression: aNode
	self matcher processNode: aNode.
	aNode properties do: [ :p | p accept: self ]