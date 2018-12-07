public
matchThat: specBlock
	caseConfigurator addGroup: (HNDslSameNodeGroup new
		caseNodes: (specifier caseNodesFromSpecBlock: specBlock);
		groupDependency: HNDslRequiresMatch instance
	)