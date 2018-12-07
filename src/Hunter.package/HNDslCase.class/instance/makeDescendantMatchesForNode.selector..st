match creation
makeDescendantMatchesForNode: aNode selector: aSelector
	descendantSubcaseHolder forCasesWithType: aNode type selector: aSelector
		doWithParent: [ :subcase :subcaseParent |
			subcaseParent hasMatches
				ifTrue: [ subcase makeMatchesForNode: aNode selector: aSelector ]
		]
