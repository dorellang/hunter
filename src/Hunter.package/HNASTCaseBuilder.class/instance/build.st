building
build
	^ (caseClass withMatcher: specifier matcher)
			conditions: conditions;
			actions: actions;
			directChildCasesDict: directChildCasesDict;
			descendantCasesDict: descendantCasesDict;
			subcases: subcases;
			order: order