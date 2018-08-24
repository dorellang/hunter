visiting
visitClassBody: aNode
	aNode body do: [ :def | def accept: self ]