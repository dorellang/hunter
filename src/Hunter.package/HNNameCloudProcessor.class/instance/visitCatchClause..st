visiting
visitCatchClause: aNode
	self handleDeclarationLValue: aNode param.
	aNode body body do: [:stmt | stmt accept: self ].