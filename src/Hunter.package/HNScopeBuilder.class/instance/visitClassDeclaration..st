visiting
visitClassDeclaration: aNode
	aNode id ifNotNil: [ :id | self handleIdentifierDeclaration: id withScope: scope ].
	aNode superClass ifNotNil: [ :superClass | superClass accept: self ].
	aNode body body do: [ :methodDef | methodDef value accept: self ].