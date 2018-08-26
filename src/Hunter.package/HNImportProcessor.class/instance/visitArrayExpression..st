visiting
visitArrayExpression: aNode
	aNode elements reject: #isNil thenDo: [ :el | el accept: self ]