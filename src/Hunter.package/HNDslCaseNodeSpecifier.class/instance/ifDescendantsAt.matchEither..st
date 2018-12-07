public
ifDescendantsAt: aGetterSelector matchEither: specBlock
	caseConfigurator addGroup: (HNDslDescendantGroup new
		promiseHubClass: HNAnyPromiseHub;
		selector: aGetterSelector;
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslConditionsParent instance
	)