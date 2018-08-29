visiting
visitProgram: aNode
	aNode body do: [ :stmt | stmt accept: self ]