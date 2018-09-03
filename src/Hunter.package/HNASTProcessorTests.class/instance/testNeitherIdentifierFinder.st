tests
testNeitherIdentifierFinder
	| ast processor identifiers |
	ast := self basicAST.
	identifiers := OrderedCollection new.
	processor := HNBasicASTProcessor new specify: [ :on |
		on node if: #hasTypeIdentifier;
			ifNeither: [
				on node if: [ :id | id name = 'foo' ].
				on node if: [ :id | id name = 'bar' ].
				on node if: [ :id | id name = 'baz' ].
			];
			do: [ :id | identifiers add: id name ]
	].
	ast accept: processor.
	self assert: identifiers asArray equals: {'qux'.	'quux'. 'corge'}