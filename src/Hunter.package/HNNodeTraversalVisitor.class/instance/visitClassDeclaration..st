visiting
visitClassDeclaration: aNode
	aNode id ifNotNil: [ :id | id accept: self ].
	aNode superClass ifNotNil: [ :superClass | superClass accept: self ].
	aNode body ifNotNil: [ :body | body accept: self ]