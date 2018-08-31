visiting
visitSwitchCase: aNode
	self matcher processNode: aNode.
	aNode test ifNotNil: [:test | test accept: self ].
	aNode consequent do: [ :statement | statement accept: self ]