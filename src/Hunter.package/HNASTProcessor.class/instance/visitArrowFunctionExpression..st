visiting
visitArrowFunctionExpression: aNode
	self matcher processNode: aNode.
	aNode params do: [ :p | p accept: self ].
	aNode body accept: self.