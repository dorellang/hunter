lookup
lookup: anIdentifierName occurringBefore: scopePosition ifNotFound: aBlock
	^ self bindings at: anIdentifierName
		ifPresent: [ :binding |
			binding scopePosition < scopePosition
				ifTrue: [ binding bindingValue ]
				ifFalse: [ HNUndefinedValue new ]
		]
		ifAbsent: [ aBlock value ].