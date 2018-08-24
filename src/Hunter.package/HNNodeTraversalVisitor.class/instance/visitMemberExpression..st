visiting
visitMemberExpression: aNode
	aNode object accept: self.
	aNode property accept: self