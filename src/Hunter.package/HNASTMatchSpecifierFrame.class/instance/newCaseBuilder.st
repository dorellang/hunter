instance creation
newCaseBuilder
	| caseBuilder |
	caseBuilder := HNASTCaseBuilder withSpecifier: specifier.
	self addCaseBuilder: caseBuilder.
	^ caseBuilder