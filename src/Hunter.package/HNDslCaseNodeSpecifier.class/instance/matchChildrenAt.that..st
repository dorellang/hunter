public
matchChildrenAt: aGetterSelector that: specBlock
	caseConfigurator addGroup: (HNDslChildOnlyGroup new
		selector: aGetterSelector;
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslRequiresMatch instance
	)