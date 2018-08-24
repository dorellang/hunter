visiting
visitWithStatement: aWithStatement
	self interpretAndLink: aWithStatement object.
	aWithStatement body accept: self