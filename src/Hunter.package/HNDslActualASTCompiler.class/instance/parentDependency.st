accessing
parentDependency
	^ group ifNotNil: [ group parentDependency ]
		ifNil: [ HNDslNoParentDependency instance ]