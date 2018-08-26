visiting
visitBlockStatement: aNode
	aNode body do: [ :stmt | stmt accept: self ]