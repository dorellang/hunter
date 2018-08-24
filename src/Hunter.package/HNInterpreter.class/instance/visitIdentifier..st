visiting
visitIdentifier: anIdentifierNode
	"TODO we're returning undefined for unexisting names... this is actually an error in strict mode
	SOMETIMES"
	^ HNDeferredValue new
		computationBlock: [
			(scope
				lookup: anIdentifierNode name
				occurringBefore: anIdentifierNode scopePosition
				ifNotFound: [ HNUndefinedValue new ]
			) computedValue
		];
		referencedNames: { anIdentifierNode name }.