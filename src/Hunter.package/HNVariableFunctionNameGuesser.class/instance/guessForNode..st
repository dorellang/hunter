guessing
guessForNode: anASTNode
	^ anASTNode parent ifNotNil: [:parent  |
		(parent type  = 'VariableDeclarator') ifTrue: [
			parent id ifTypeIs: 'Identifier' thenDo: [ :id | id name ] ifNot: [ nil ]
		] ifFalse: [ nil ]
	] ifNil: [ nil ]