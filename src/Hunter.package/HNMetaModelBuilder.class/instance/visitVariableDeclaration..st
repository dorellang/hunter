visiting
visitVariableDeclaration: aVariableDeclaration
	| kind |
	kind := aVariableDeclaration kind.
	aVariableDeclaration declarations do: [ :aVariableDeclarator |
		| visitor |
		visitor := HNLHSPatternVisitor new
			identifierFoundCallback: [:idNode |
				| variable |
				variable := HNVariable new
					name: idNode name;
					kind: kind;
					definitionNode: idNode.
				({'let'. 'const'} includes: kind) ifTrue: [
					metaModel addVariable: variable.
				] ifFalse: [ 
					kind = 'var'
					ifTrue: [ metaModel addVariable: variable ]
					ifFalse: [ Error signal: 'Unsupported variable kind.'  ]
				]
			].
		aVariableDeclarator id accept: visitor.
		aVariableDeclarator init ifNotNil: [ :init | init accept: self ].
	]