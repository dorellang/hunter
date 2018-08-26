visiting
visitProperty: aNode
	aNode key accept: self.
	aNode value ifNotNil: [ :v | v accept: self ]