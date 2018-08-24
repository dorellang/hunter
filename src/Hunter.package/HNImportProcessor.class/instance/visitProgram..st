visiting
visitProgram: aNode
	program := project metaModelFromNode: aNode.
	aNode body do: [ :stmt | stmt accept: self ]