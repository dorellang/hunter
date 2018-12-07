public
whenMeetsParentDependencyFor: aMatch do: aBlock
	aMatch parent matchedPromise then: [ :x | aBlock value ]