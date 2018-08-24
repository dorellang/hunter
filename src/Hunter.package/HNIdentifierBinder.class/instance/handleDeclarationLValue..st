private
handleDeclarationLValue: aNode
	| lhsVisitor |
	lhsVisitor := HNLHSPatternVisitor new identifierFoundCallback: [ :id | id accept: self ].
	aNode accept: lhsVisitor
