visiting
visitArrayExpression: aNode
	self matcher processNode: aNode.
	aNode elements reject: #isNil thenDo: [ :e | e accept: self ]