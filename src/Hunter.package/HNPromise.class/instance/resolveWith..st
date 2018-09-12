resolving
resolveWith: aValue
	result := aValue.
	resolvedCbs do: [ :cb | cb value: aValue ].
	self cleanCallbacks