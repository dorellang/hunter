visiting
visitClassExpression: aNode
	aNode superClass ifNotNil: [ :superClass | superClass accept: self ].
	aNode body body do: [ :methodDef | methodDef value accept: self ].