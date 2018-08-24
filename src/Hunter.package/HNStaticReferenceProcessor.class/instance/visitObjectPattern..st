visiting
visitObjectPattern: aNode
	aNode properties do: [ :p | p value accept: self ]