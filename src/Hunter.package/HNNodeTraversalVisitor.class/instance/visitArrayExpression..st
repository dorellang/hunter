visiting
visitArrayExpression: aNode
	aNode elements reject: #isNil thenDo: [ :e | e accept: self ]