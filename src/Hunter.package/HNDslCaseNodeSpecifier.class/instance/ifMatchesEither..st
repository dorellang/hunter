public
ifMatchesEither: specBlock
	caseConfigurator addGroup: (HNDslSameNodeGroup new
		promiseHubClass: HNAnyPromiseHub;
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslConditionsParent instance
	)