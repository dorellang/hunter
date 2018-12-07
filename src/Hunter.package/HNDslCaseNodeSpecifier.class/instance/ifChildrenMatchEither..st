public
ifChildrenMatchEither: specBlock
	caseConfigurator addGroup: (HNDslChildOnlyGroup new
		promiseHubClass: HNAnyPromiseHub;
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslConditionsParent instance
	)