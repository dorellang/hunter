visiting
visitMemberExpression: aMemberExpression
	aMemberExpression object accept: self.
	aMemberExpression computed ifTrue: [ aMemberExpression property accept: self ].