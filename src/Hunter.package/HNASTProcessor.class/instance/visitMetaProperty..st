visiting
visitMetaProperty: aNode
	self matcher processNode: aNode.
	aNode meta accept: self.
	aNode property accept: self