private
handleDeclarationLValue: aNode withScope: aScope
	| lhsVisitor |
	lhsVisitor := HNLHSPatternVisitor new identifierFoundCallback: [ :idNode |
		self handleIdentifierDeclaration: idNode withScope: aScope
	].
	aNode accept: lhsVisitor
