match creation
canMakeMatchForNode: aNode
	^ isDirectChild ==> [ parent lastMatch node = aNode parent ]