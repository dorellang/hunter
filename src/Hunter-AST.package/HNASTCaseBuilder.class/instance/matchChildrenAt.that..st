public
matchChildrenAt: aGetterSelector that: specBlock
	(self directChildCasesFor: aGetterSelector)
		addAll: (specifier compiledCasesFromSpecBlock: specBlock)