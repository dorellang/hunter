accessing
priorityPlusPlus
	| currentPriority |
	currentPriority := priority.
	priority := priority + 1.
	^ currentPriority