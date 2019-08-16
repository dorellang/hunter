accessing
finalizer: aBlockStatement
	self registerAsChild: aBlockStatement.
	finalizer := aBlockStatement