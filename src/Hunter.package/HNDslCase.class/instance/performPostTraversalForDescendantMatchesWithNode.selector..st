post traversal
performPostTraversalForDescendantMatchesWithNode: aNode selector: aSelector
	descendantSubcaseHolder forCasesWithType: aNode type selector: aSelector do: [ :subcase |
		subcase performPostTraversalForNode: aNode selector: aSelector
	]