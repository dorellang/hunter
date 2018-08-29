public
node
	| newCaseBuilder |
	self closeCurrentCase.
	newCaseBuilder := HNASTCaseBuilder withMatcher: matcher.
	self currentCaseBuilder: newCaseBuilder.
	^ newCaseBuilder