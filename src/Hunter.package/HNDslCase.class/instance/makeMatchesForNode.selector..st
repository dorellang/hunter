match creation
makeMatchesForNode: aNode selector: aSelector
	self makeDescendantMatchesForNode: aNode selector: selector.
	self makeSameNodeMatchesForNode: aNode selector: selector.