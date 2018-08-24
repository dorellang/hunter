tests
testObjectPattern
	| visitor results |
	results := OrderedCollection new.
	visitor := HNLHSPatternVisitor new
		identifierFoundCallback: [:idNode |
			results add: idNode name
		].

	HNObjectPatternNode new
		properties: {
			HNPropertyNode new
				key: (HNIdentifierNode new name: 'hola');
				computed: false;
				value: (HNIdentifierNode new name: 'hello');
				kind:  'init';
				method: false;
				shorthand: false.
			HNPropertyNode new
				key: (HNIdentifierNode new name: 'lala');
				computed: false;
				value: (HNIdentifierNode new name: 'lala');
				kind: 'init';
				method: false;
				shorthand: true };
		accept: visitor.

	self assert: results size equals: 2.
	self assert: results first equals: 'hello'.
	self assert: results second equals: 'lala'.