visiting
visitClassBody: aNode
	self matcher processNode: aNode.
	aNode body do: [ :def | def accept: self ]