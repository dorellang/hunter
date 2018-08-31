visiting
visitMemberExpression: aNode
	self matcher processNode: aNode.
	aNode object accept: self.
	aNode computed ifTrue: [ aNode property accept: self ]