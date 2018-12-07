public
ifDescendantsAt: aGetterSelector match: specBlock
	caseConfigurator addGroup: (HNDslDescendantGroup new
		promiseHubClass: HNAllPromiseHub;
		selector: aGetterSelector;
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslConditionsParent instance
	)