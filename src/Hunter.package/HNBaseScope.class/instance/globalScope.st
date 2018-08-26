accessing
globalScope
	^ globalScope := globalScope ifNil: [ parent globalScope ]