visiting
visitIfStatement: aNode
	aNode test accept: self.
	aNode consequent accept: self.
	aNode alternate ifNotNil: [ :alt | alt accept: self]
