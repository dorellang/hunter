accessing
init: anExpressionOrVariableDeclaration
	self registerAsChild: anExpressionOrVariableDeclaration.
	init := anExpressionOrVariableDeclaration 