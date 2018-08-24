adding
addVariable: aVariable
	self linkNode: aVariable definitionNode toMetaModel: aVariable.
	self variables add: (aVariable parent: self)