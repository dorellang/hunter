accessing
rootNode
	^ HNDslRootNode new caseNodes: caseNodes;
		globalVariables: rootContextSpecifier globalVariables;
		initActions: rootContextSpecifier initActions