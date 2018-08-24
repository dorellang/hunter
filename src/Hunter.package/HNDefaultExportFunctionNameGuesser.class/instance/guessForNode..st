guessing
guessForNode: aFunctionNode
	^ (aFunctionNode parent type = 'ExportDefaultDeclaration')
		ifTrue: [ 'default' ]
		ifFalse: [ nil ]