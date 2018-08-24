visiting
visitCallExpression: aNode
	(aNode callee type = 'Identifier'
		and: [ aNode callee name = 'require'
		and: [ aNode callee scope isGlobalScope
		and: [ aNode arguments size = 1 
		and: [ aNode arguments first type = 'Literal'
		and: [ aNode arguments first value isString ]]]]]) ifTrue: [
			program addRawDependency: aNode arguments first value
	].
	aNode callee accept: self.
	aNode arguments do: [ :arg | arg accept: self ]