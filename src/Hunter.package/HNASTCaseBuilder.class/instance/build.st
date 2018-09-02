building
build
	^ (HNASTCase withMatcher: specifier matcher)
			conditions: conditions;
			actions: actions;
			directChildCasesDict: directChildCasesDict;
			descendantCasesDict: descendantCasesDict;
			order: order