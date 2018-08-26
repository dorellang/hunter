visiting
visitBlockStatement: aNode
	| blockScope processor |
	blockScope := HNBlockScope withParent: scope.
	self project linkNode: aNode toScope: blockScope.
	processor := self species withScope: blockScope.
	aNode body do: [ :stmt | stmt accept: processor ]