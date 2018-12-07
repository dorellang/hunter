match creation
makeContextWithParent: aParentContext
	^ localVariables ifEmpty: [ aParentContext ]
		ifNotEmpty: [ HNDslContext withParent: aParentContext symbols: localVariables ]