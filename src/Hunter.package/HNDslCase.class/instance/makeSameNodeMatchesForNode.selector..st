match creation
makeSameNodeMatchesForNode: aNode selector: aSelector
	| match |
	(self canMakeMatchForNode: aNode) ifFalse: [ ^ self ].
	match := self makeMatchForNode: aNode.
	match checkPredicates: predicates.
	sameNodeSubcaseHolder forCasesWithType: aNode type selector: aSelector do: [ :subcase |
		parentDependency whenMeetsParentDependencyFor: match do: [
			subcase makeSameNodeMatchesForNode: aNode selector: aSelector
		]
	]