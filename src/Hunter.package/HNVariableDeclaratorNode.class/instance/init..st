accessing
init: anExpression
	self registerAsChild: anExpression.
	init := anExpression