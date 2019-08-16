instance creation
newCaseBuilderWithClass: caseClass
	| caseBuilder |
	caseBuilder := HNASTCaseBuilder withSpecifier: specifier caseClass: caseClass.
	self addCaseBuilder: caseBuilder.
	^ caseBuilder