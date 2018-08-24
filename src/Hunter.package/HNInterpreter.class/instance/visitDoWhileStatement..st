visiting
visitDoWhileStatement: aDoWhileStatement
	self interpretAndLink: aDoWhileStatement test.
	aDoWhileStatement body accept: self
	
	