guessing
guessForNode: aNode
	^ (aNode parent type = 'AssignmentExpression')
		ifTrue: [ (aNode parent left type = 'Identifier')
			ifTrue: [ aNode parent left name ] 
			ifFalse: [ nil ]
		]
		ifFalse: [ nil ]