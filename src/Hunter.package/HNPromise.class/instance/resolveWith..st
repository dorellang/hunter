resolving
resolveWith: aValue
	self isCompleted ifTrue: [ ^ self ].
	status := #resolved.
	result := aValue.
	resolvedCbs do: [ :cb | cb value: aValue ].
	self cleanCallbacks