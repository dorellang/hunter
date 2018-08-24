visiting
visitForStatement: aNode
	self checkScopeAtNode: aNode.
	aNode init ifNotNil: [:init | aNode init accept: self ].
	aNode test ifNotNil: [ :test | test accept: self ].
	aNode update ifNotNil: [:update | update accept: self ].
	aNode body accept: self
