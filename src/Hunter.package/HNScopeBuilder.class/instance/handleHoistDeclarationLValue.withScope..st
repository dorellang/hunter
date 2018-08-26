private
handleHoistDeclarationLValue: aNode withScope: aScope
	| lhsVisitor |
	lhsVisitor := HNLHSPatternVisitor new identifierFoundCallback: [ :idNode |
		self handleIdentifierHoistDeclaration: idNode withScope: aScope
	].
	aNode accept: lhsVisitor
