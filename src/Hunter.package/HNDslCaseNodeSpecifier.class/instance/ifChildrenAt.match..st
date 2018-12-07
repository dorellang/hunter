public
ifChildrenAt: aGetterSelector match: specBlock
	caseConfigurator addGroup: (HNDslChildOnlyGroup new
		promiseHubClass: HNAllPromiseHub;
		selector: aGetterSelector;
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslConditionsParent instance
	)