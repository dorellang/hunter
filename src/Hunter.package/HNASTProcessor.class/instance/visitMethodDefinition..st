visiting
visitMethodDefinition: aNode
	self matcher processNode: aNode.
	aNode key ifNotNil: [ :k | k accept: self ].
	aNode value ifNotNil: [ :v | v accept: self ]