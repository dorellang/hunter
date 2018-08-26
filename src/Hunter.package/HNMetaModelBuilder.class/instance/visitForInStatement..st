visiting
visitForInStatement: aForInStatement
	aForInStatement left accept: self.
	aForInStatement right accept: self.
	aForInStatement body accept: self.

