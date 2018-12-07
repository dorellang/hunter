public
ifDescendantsMatchNeither: specBlock
	caseConfigurator addGroup: (HNDslDescendantGroup new
		promiseHubClass: HNNonePromiseHub;
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslConditionsParent instance
	)