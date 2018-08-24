private
handleClassLikeNode: aNode
	| newClass superclass superclassName |
	
	superclass := aNode superClass.
	superclassName := (superclass notNil and: [ superclass class ~~ HNCallExpressionNode ]) ifTrue: [ superclass name ] ifFalse: [ nil ].
	
	newClass := HNClass new
		name: (aNode id ifNotNil: [:id | id name]);
		definitionNode: aNode;
		superclassName: superclassName;
		yourself.
	
	metaModel addClass: newClass.
	aNode body body detect: [ :def | def kind = 'constructor' ]
		ifFound: [ :def |
			self handleFunctionLikeNode: def value
				addToMetaModelCb: [ :f | newClass constructor: f ]
		].
	aNode body body reject: [ :def | def static or: [ def kind = 'constructor' ] ]
		thenDo: [ :def |
			self handleFunctionLikeNode: def value
				addToMetaModelCb: [ :f | newClass addInstanceMethod: f ]
		].
	aNode body body select: [ :def | def static ]
		thenDo: [ :def |
			self handleFunctionLikeNode: def value
				addToMetaModelCb: [ :f | newClass addStaticMethod: f ]
		].