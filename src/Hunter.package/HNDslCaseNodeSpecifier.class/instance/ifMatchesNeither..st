public
ifMatchesNeither: specBlock
	caseConfigurator addGroup: (HNDslSameNodeGroup new
		promiseHubClass: HNNonePromiseHub;
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslConditionsParent instance
	)