initialization
initialize
	predicates := {}.
	resolveActions := {}.
	rejectActions := {}.
	finallyActions := {}.
	postTraversalResolveActions := {}.
	postTraversalRejectActions := {}.
	postTraversalFinallyActions := {}.
	descendantSubcaseHolder := HNDslCaseHolder empty.
	sameNodeSubcaseHolder := HNDslCaseHolder empty.
	subcaseGroups := {}.
	localVariables := {}.
	matches := OrderedCollection new
	