accessing
matcher
	^ matcher := matcher ifNil: [
		| newMatcher specifier |
		newMatcher := HNASTMatcher new.
		specifier := newMatcher specifier.
		self matchAST: specifier.
		specifier closeCurrentCase.
		newMatcher
	]