public
whenMeetsParentDependencyFor: aMatch do: aBlock
	aMatch parent matchedPromise catch: [ :x | aBlock value ]