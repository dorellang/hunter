visiting
visitForStatement: aNode
	aNode init ifNotNil: [ :init | init accept: self ].
	aNode test ifNotNil: [ :test | test accept: self ].
	aNode update ifNotNil: [ :update | update accept: self ].
	aNode body accept: self