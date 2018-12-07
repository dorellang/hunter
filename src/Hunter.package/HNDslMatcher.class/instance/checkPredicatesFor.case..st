processing
checkPredicatesFor: aNode case: aCase
	aCase subcasesWithMatchesDo: [ :subcase | subcase checkPredicatesFor: aNode ].
	aCase checkPredicatesFor: aNode