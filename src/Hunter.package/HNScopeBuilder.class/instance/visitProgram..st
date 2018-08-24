visiting
visitProgram: aNode
	| programScope processor |
	programScope := HNProgramScope withParent: scope.
	self project linkNode: aNode toScope: programScope.
	processor := self species withScope: programScope.
	aNode body do: [ :stmt | stmt accept: processor ]