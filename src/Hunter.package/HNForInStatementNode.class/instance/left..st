accessing
left: anExpression
	self registerAsChild: anExpression.
	left := anExpression