adding
addInstanceMethod: aFunction
	self linkNode: aFunction definitionNode toMetaModel: aFunction.
	self instanceMethods add: (aFunction parent: self)