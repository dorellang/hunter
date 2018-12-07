initialization
initialize
	types := #().
	initActions := OrderedCollection new.
	predicates := OrderedCollection new.
	localVariables := OrderedCollection new.
	groups := OrderedCollection new.
	resolveActions := OrderedCollection new.
	rejectActions := OrderedCollection new.
	finallyActions := OrderedCollection new.
	postTraversalResolveActions := OrderedCollection new.
	postTraversalRejectActions := OrderedCollection new.
	postTraversalFinallyActions := OrderedCollection new.