annotations
annotatePriority: nextPriority
	| priority |
	priority := nextPriority.
	caseNodes do: [ :aCaseNode |
		priority := aCaseNode annotatePriority: priority.
	].
	^ priority