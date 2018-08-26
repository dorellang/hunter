visiting
visitForStatement: aNode
	| forScope processor |
	forScope := HNScope withParent: scope.
	processor := self species withScope: forScope.
	self project linkNode: aNode toScope: forScope.
	aNode init ifNotNil: [:init | aNode init accept: processor ].
	aNode test ifNotNil: [ :test | test accept: self ].
	aNode update ifNotNil: [:update | update accept: self ].
	aNode body accept: processor