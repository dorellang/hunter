adding
addStaticMethod: aFunction
	self linkNode: aFunction definitionNode toMetaModel: aFunction.
	self staticMethods add: (aFunction parent: self)