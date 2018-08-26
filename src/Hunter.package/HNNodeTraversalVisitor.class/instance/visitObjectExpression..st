visiting
visitObjectExpression: aNode
	aNode properties do: [ :p | p accept: self ]