accessing
matcher
	^ matcher ifNil: [ self specify: [ :spec | self matchAST: spec ]. matcher ]