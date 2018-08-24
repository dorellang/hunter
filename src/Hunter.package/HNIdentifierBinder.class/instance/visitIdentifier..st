visiting
visitIdentifier: aNode
	| bindingScope |
	self checkScopeAtNode: aNode.
	bindingScope := scope bindingScopeFor: aNode name ifNotFound: [ nil ].
	bindingScope ifNotNil: [ aNode scope: bindingScope ]
		ifNil: [ self handleUnknownIdentifier: aNode ]
	