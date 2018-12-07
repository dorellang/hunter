public
ifChildrenMatchNeither: specBlock
	caseConfigurator addGroup: (HNDslChildOnlyGroup new
		promiseHubClass: HNNonePromiseHub;
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslConditionsParent instance
	)