public
ifChildrenMatch: specBlock
	caseConfigurator addGroup: (HNDslChildOnlyGroup new
		promiseHubClass: HNAllPromiseHub;
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslConditionsParent instance
	)