post traversal
performPostTraversalForNode: aNode selector: aSelector
	self performPostTraversalForDescendantMatchesWithNode: aNode selector: selector.
	self performPostTraversalForSameNodeMatchesWithNode: aNode selector: selector