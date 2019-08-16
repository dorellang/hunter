accessing
update: anExpression
	self registerAsChild: anExpression.
	update := anExpression