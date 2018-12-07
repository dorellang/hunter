public
matchDescendantsThat: specBlock
	caseConfigurator addGroup: (HNDslDescendantGroup new
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslRequiresMatch instance
	)