private
interpretAndLink: aNode
	scope linkExpression: aNode toValue: (aNode accept: self).
	statementPos := statementPos + 1