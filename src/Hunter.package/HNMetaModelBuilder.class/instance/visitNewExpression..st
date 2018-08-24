visiting
visitNewExpression: aNewExpression
	aNewExpression callee accept: self.
	aNewExpression arguments do: [ :argument | argument accept: self ]