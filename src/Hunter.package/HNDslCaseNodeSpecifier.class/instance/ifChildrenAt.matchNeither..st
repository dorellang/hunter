public
ifChildrenAt: aGetterSelector matchNeither: specBlock
	caseConfigurator addGroup: (HNDslChildOnlyGroup new
		promiseHubClass: HNNonePromiseHub;
		selector: aGetterSelector;
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslConditionsParent instance
	)