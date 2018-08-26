visiting
visitFunctionExpression: aNode
	aNode id ifNotNil: [ :id | id accept: self ].
	aNode params do: [ :p | p accept: self ].
	aNode body accept: self.