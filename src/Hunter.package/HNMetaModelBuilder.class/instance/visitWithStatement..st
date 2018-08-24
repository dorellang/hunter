visiting
visitWithStatement: aWithStatement
	aWithStatement object accept: self.
	aWithStatement body accept: self.