adding
addClass: aClass
	self linkNode: aClass definitionNode toMetaModel: aClass.
	self classes add: (aClass parent: self)