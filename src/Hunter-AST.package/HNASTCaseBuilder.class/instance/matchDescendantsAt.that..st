public
matchDescendantsAt: aGetterSelector that: specBlock
	(self descendantCasesFor: aGetterSelector)
		addAll: (specifier compiledCasesFromSpecBlock: specBlock)