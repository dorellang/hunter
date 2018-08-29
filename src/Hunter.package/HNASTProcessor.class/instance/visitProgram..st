visiting
visitProgram: aNode
	self matcher processNode: aNode.
	aNode body do: [ :stmt | stmt accept: self ]