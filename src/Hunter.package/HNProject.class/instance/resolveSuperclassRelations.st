dependencies
resolveSuperclassRelations
	self classes do: [ :aClass |
		|superclassName |
		superclassName := aClass superclassName.
		superclassName ifNotNil: [ aClass superclass: (self classNamed: superclassName) ]
		 ]