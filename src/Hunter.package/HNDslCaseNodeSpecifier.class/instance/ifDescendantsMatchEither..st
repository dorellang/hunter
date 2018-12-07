public
ifDescendantsMatchEither: specBlock
	caseConfigurator addGroup: (HNDslDescendantGroup new
		promiseHubClass: HNAnyPromiseHub;
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslConditionsParent instance
	)