public
ifDescendantsMatch: specBlock
	caseConfigurator addGroup: (HNDslDescendantGroup new
		promiseHubClass: HNAllPromiseHub;
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslConditionsParent instance
	)