public
matchChildrenThat: specBlock
	caseConfigurator addGroup: (HNDslChildOnlyGroup new
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslRequiresMatch instance
	)