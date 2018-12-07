resolving
rejectWith: aValue
	self isCompleted ifTrue: [ ^ self ].
	status := #rejected.
	result := aValue.
	rejectedCbs do: [ :cb | cb value: aValue ].
	self cleanCallbacks