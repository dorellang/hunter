visiting
visitCatchClause: aNode
	self checkScopeAtNode: aNode.
	self handleDeclarationLValue: aNode param.
	aNode body body do: [:stmt | stmt accept: self ].