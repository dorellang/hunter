processing
visitingChildrenAt: slotName with: aBlock
	| oldSelector |
	oldSelector := currentSelector.
	currentSelector := slotName.
	aBlock value.
	currentSelector := oldSelector