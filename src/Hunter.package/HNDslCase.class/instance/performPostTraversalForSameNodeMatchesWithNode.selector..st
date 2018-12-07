post traversal
performPostTraversalForSameNodeMatchesWithNode: aNode selector: aSelector
	| match |
	sameNodeSubcaseHolder forCasesWithType: aNode type selector: aSelector do: [ :subcase |
		subcase performPostTraversalForSameNodeMatchesWithNode: aNode selector: aSelector
	].
	matches ifEmpty: [ ^ self ].
	match := self lastMatch.
	match node ~= aNode ifTrue: [ ^ self ].
	match notifyChildTraversalEnd.
	matches removeLast