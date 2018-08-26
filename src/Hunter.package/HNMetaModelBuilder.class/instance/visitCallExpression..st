visiting
visitCallExpression: aCallExpression
	aCallExpression callee accept: self.
	aCallExpression arguments do: [ :argument | argument accept: self ].