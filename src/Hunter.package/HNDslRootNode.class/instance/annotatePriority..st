annotations
annotatePriority: nextPriority
	| nextChildPriority |
	priority := nextPriority.
	nextChildPriority := nextPriority + 1.
	caseNodes do: [ :aCaseNode |
		nextChildPriority := aCaseNode annotatePriority: nextChildPriority
	]