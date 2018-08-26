private
handleDeclarationLValue: aNode
	| lhsVisitor |
	lhsVisitor := HNLHSPatternVisitor new identifierFoundCallback: [ :id | id accept: self ];
		defaultExprFoundCallback: [ :expr | expr accept: self ].
	aNode accept: lhsVisitor
