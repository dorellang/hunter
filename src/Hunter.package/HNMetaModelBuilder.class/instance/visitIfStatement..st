visiting
visitIfStatement: anIfStatement
	anIfStatement test accept: self.
	anIfStatement consequent accept: self.
	anIfStatement alternate ifNotNil: [anIfStatement alternate accept: self].
