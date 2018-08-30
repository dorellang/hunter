accessing
matcher
	^ matcher := matcher ifNil: [ HNASTMatcher new specify: [ :spec | self matchAST: spec ] ]