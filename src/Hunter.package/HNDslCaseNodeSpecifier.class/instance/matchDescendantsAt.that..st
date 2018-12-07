public
matchDescendantsAt: aGetterSelector that: specBlock
	caseConfigurator addGroup: (HNDslDescendantGroup new
		selector: aGetterSelector;
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslRequiresMatch instance
	)