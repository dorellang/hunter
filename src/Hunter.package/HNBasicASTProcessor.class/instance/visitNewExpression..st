visiting
visitNewExpression: aNode
	self matcher processNode: aNode.
	aNode callee accept: self.
	aNode arguments do: [ :arg | arg accept: self ]