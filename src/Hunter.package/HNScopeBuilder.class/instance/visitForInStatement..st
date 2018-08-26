visiting
visitForInStatement: aNode
	| forScope processor |
	forScope := HNScope withParent: scope.
	processor := self species withScope: forScope.
	self project linkNode: aNode toScope: forScope.
	aNode right accept: self.
	aNode left accept: processor.
	aNode body accept: processor