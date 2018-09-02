initialization
initializeWithSpecifier: aSpecifier
	specifier := aSpecifier.
	order := aSpecifier nextOrder.
	conditions := OrderedCollection new.
	actions := OrderedCollection new.
	matchChildrenAtDict := Dictionary new.