tests
testBindingNonBlockScope
	| normalScope blockScope |
	normalScope := HNScope withParent: rootScope.
	blockScope := HNBlockScope withParent: normalScope.

	self assert: rootScope bindingNonBlockScope equals: rootScope.
	self assert: normalScope bindingNonBlockScope equals: normalScope.
	self assert: blockScope bindingNonBlockScope equals: normalScope.