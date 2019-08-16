specifying
specify: specBlock
	cases addAll: ((HNASTMatchSpecifier withMatcher: self) compiledCasesFromSpecBlock: specBlock)