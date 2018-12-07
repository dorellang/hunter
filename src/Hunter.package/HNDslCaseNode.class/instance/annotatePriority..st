annotations
annotatePriority: nextPriority
	| nextChildPriority |
	priority := nextPriority.
	nextChildPriority := nextPriority + 1.
	groups do: [ :aGroup |
		nextChildPriority := aGroup annotatePriority: nextChildPriority
	].
	^ nextChildPriority