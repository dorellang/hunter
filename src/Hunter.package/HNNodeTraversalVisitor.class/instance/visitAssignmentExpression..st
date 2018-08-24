visiting
visitAssignmentExpression: aNode
	self handleExpressionLValue: aNode left.
	aNode right accept: self