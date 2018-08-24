tests
testArrayPatternWithRest
	| visitor results |
	results := OrderedCollection new.
	visitor := HNLHSPatternVisitor new
		identifierFoundCallback: [:idNode |
			results add: idNode name
		].
	HNArrayPatternNode new
		elements: {
			HNIdentifierNode new name: 'hello'.
			HNRestElementNode new
				argument: (HNAssignmentPatternNode new
					left: (HNIdentifierNode new name:'etc');
					right: (HNLiteralNode new value: 0; raw: 0))
		};
		accept: visitor.
	self assert: results size equals: 2.
	self assert: results first equals: 'hello'.
	self assert: results second equals: 'etc'.