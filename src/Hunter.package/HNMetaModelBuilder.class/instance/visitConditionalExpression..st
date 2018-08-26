visiting
visitConditionalExpression: aConditionalStatement
	aConditionalStatement test accept: self.
	aConditionalStatement consequent accept: self.
	aConditionalStatement alternate ifNotNil: [:alternate | alternate accept: self].