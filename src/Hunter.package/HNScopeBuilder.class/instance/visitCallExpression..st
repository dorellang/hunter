visiting
visitCallExpression: aNode
	aNode callee accept: self.
	aNode arguments do: [ :arg | arg accept: self].