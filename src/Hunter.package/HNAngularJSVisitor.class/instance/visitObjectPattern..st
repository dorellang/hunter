visiting
visitObjectPattern: aNode
	aNode properties do: [ :p | p accept: self ]