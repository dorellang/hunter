tests
testArrayPattern
	| visitor results |
	results := OrderedCollection new.
	visitor := HNLHSPatternVisitor new
		identifierFoundCallback: [:idNode |
			results add: idNode name
		].
	HNArrayPatternNode new
		elements: { HNIdentifierNode new name: 'hello'. HNIdentifierNode new name: 'world' };
		accept: visitor.
	self assert: results size equals: 2.
	self assert: results first equals: 'hello'.
	self assert: results second equals: 'world'.