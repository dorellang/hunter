visiting
visitMemberExpression: aNode
	aNode object accept: self.
	aNode computed ifTrue: [ aNode property accept: self ]