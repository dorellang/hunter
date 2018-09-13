visiting
visitCallExpression: aNode
	(aNode callee type = 'MemberExpression') ifTrue: [
		| beforeDot afterDot |
		beforeDot := aNode callee object. "angular"
		afterDot := aNode callee property. "module"
		(beforeDot type = 'Identifier' and: [ beforeDot name = 'angular' ]) ifTrue: [
		]
	].

	aNode callee accept: self.
	aNode arguments do: [ :arg | arg accept: self ]