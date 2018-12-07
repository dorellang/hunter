testing
hasPostTraversalActions
	^ case postTraversalResolveActions notEmpty
		and: [ case postTraversalRejectActions notEmpty
		and: [ case postTraversalFinallyActions notEmpty ] ]