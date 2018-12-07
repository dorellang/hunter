tests
testNeitherIdentifierFinder
	| ast processor identifiers |
	self skip: 'Nested AST queries are not supported right now'.
	ast := self basicAST.
	identifiers := OrderedCollection new.
	processor := HNBasicASTProcessor new specify: [ :on |
		on node if: #hasTypeIdentifier;
			ifMatchesNeither: [
				on node if: [ :id | id name = 'foo' ].
				on node if: [ :id | id name = 'bar' ].
				on node if: [ :id | id name = 'baz' ].
			];
			do: [ :id | identifiers add: id name ]
	].
	ast accept: processor.
	self assert: identifiers asArray equals: {'qux'.	'quux'. 'corge'}