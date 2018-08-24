accessing
children
	^ self constructor 
		ifNil: [ self instanceMethods, self staticMethods ]
		ifNotNil:  [ self instanceMethods, self staticMethods, { self constructor } ]