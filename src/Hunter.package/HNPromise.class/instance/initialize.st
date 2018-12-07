initialization
initialize
	resolvedCbs := OrderedCollection new.
	rejectedCbs := OrderedCollection new.
	completedCbs := OrderedCollection new.
	status := #pending