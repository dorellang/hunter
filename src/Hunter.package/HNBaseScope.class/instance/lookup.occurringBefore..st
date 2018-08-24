lookup
lookup: anIdentifierName occurringBefore: aScopePosition
	self checkIfDeclaredAndMarked: anIdentifierName.
	^ bindings at: anIdentifierName
		ifPresent: [ :nameBindings |
			| binding |
			binding := (nameBindings select: [:b1 | b1 position < aScopePosition])
				detectMax: [ :b2 | b2 position ].
			binding bindingValue
		]