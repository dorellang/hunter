accessing
constructor: aConstructorFunction
	self linkNode: aConstructorFunction definitionNode toMetaModel: aConstructorFunction.
	constructor := (aConstructorFunction parent: self)