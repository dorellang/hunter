binding
bind: aNameString to: aValue
	| newBinding |
	newBinding := HNScopeBinding withValue: aValue at: currentPosition.
	self checkIfDeclaredAndMarked: aNameString.
	bindings at: aNameString
		ifPresent: [ :nameBindings | nameBindings add: newBinding ]
		ifAbsentPut: [ OrderedCollection with: newBinding ].
	currentPosition := currentPosition + 1