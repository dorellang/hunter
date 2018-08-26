visiting
visitIfStatement: aNode
	self checkScopeAtNode: aNode.
	aNode test accept: self.
	aNode consequent accept: self.
	aNode alternate ifNotNil: [ :alt | alt accept: self]
