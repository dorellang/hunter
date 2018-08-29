visiting
visitArrowFunctionExpression: aNode
	aNode params do: [ :p | p accept: self ].
	aNode body accept: self.