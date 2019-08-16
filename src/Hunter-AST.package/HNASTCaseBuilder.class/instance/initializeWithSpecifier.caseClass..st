initialization
initializeWithSpecifier: aSpecifier caseClass: aClass
	specifier := aSpecifier.
	caseClass := aClass.
	order := aSpecifier nextOrder.
	conditions := OrderedCollection new.
	actions := OrderedCollection new.
	matchChildrenAtDict := Dictionary new.
	subcases := OrderedCollection new.