visiting
visitProperty: aNode
	self matcher processNode: aNode.
	aNode key accept: self.
	aNode value ifNotNil: [ :v | v accept: self ]