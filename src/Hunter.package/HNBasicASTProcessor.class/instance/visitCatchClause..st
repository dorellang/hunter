visiting
visitCatchClause: aNode
	self matcher processNode: aNode.
	aNode param accept: self.
	aNode body accept: self