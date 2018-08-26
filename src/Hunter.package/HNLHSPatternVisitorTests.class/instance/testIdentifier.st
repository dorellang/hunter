tests
testIdentifier
	| visitor results ast |
	results := OrderedCollection new.
	visitor := HNLHSPatternVisitor new
		identifierFoundCallback: [:idNode |
			results add: idNode name
		].
	ast := HNIdentifierNode new name: 'foo'.
	ast accept: visitor.
	self assert: results size equals: 1.
	self assert: results first equals: 'foo'.