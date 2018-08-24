guessing
guessForNode: anASTNode
	^ anASTNode parent ifNotNil: [ :parent |
		(parent type = 'AssignmentPattern') ifTrue: [
			parent left ifTypeIs: 'Identifier' thenDo: [ :id | id name ] ifNot: [ nil ]
		] ifFalse: [ nil ]
	] ifNil: [ nil ]
	