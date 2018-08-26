visiting
visitWhileStatement: aWhileStatement
	self interpretAndLink: aWhileStatement test.
	aWhileStatement body accept: self
