resolving
rejectWith: aValue
	error := aValue.
	rejectedCbs do: [ :cb | cb value: aValue ].
	self cleanCallbacks