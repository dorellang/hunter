visiting
visitBlockStatement: aNode
	self matcher processNode: aNode.
	aNode body do: [ :item | item accept: self ]