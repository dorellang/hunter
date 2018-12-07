public
ifDescendantsAt: aGetterSelector matchNeither: specBlock
	caseConfigurator addGroup: (HNDslDescendantGroup new
		promiseHubClass: HNNonePromiseHub;
		selector: aGetterSelector;
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslConditionsParent instance
	)