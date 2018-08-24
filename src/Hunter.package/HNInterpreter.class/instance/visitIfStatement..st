visiting
visitIfStatement: anIfStatement
	self interpretAndLink: anIfStatement test.
	anIfStatement consequent accept: self.
	anIfStatement alternate ifNotNil: [ :alt | alt accept: self ]