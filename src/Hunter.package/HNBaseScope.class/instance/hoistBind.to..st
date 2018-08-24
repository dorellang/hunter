binding
hoistBind: aNameString to: aValue
	self checkIfDeclaredAndMarked: aNameString.
	bindings at: aNameString
		ifPresent: [ :nameBindings | nameBindings add: (HNScopeBinding withValue: aValue at: 0) ]
		ifAbsentPut: [ OrderedCollection with: (HNScopeBinding withValue: aValue at: 0) ]