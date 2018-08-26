adding
addFunction: aFunction
	self linkNode: aFunction definitionNode toMetaModel: aFunction.
	self functions add: (aFunction parent: self)