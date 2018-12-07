public
ifMatches: specBlock
	caseConfigurator addGroup: (HNDslSameNodeGroup new
		promiseHubClass: HNAllPromiseHub;
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslConditionsParent instance
	)