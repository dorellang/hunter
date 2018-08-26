visiting
visitYieldExpression: aYieldExpression
	aYieldExpression argument ifNotNil: [ aYieldExpression argument accept: self ]
