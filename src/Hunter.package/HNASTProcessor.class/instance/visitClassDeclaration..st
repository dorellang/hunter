visiting
visitClassDeclaration: aNode
	self matcher processNode: aNode.
	aNode id ifNotNil: [ :id | id accept: self ].
	aNode superClass ifNotNil: [ :superClass | superClass accept: self ].
	aNode body body do: [ :methodDef | methodDef value accept: self ]