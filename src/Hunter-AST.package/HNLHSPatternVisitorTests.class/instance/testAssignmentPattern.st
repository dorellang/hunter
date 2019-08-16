tests
testAssignmentPattern
	| visitor idResults exprResults default |

	idResults := OrderedCollection new.
	exprResults := OrderedCollection new.
	visitor := HNLHSPatternVisitor new
		defaultExprFoundCallback: [ :expr | exprResults add: expr ];
		identifierFoundCallback: [ :idNode | idResults add: idNode name ].
	default := HNLiteralNode new value: 7; raw: '7'.

	HNAssignmentPatternNode new
		left: (HNIdentifierNode new name: 'bar');
		right: default;
		accept: visitor.

	self assert: idResults size equals: 1.
	self assert: idResults first equals: 'bar'.
	self assert: exprResults size equals: 1.
	self assert: exprResults first equals: default