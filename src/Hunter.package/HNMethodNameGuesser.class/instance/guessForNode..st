guessing
guessForNode: anASTNode
	^ anASTNode parent ifNotNil: [:parent  |
		({'Property'. 'MethodDefinition'} includes: parent type) ifTrue: [
			| prefix |
			prefix := (parent kind = 'get')
				ifTrue: ['get ']
				ifFalse: [
					(parent kind = 'set')
						ifTrue: ['set ']
						ifFalse: [ '' ]
				].
			parent computed
				ifTrue: [
					"TODO this case isn't handled yet (requires static computation)"
					^ nil
				]
				ifFalse: [
					parent key ifTypeIs: 'Identifier' thenDo: [ :id | ^ prefix, id name ].
					parent key ifTypeIs: 'Literal' thenDo: [ :l | ^ prefix, l value asString ].
				].
		] ifFalse: [ ^ nil ]
	] ifNil: [ ^ nil ]