tests
testEitherIdentifierFinder
	| ast processor identifiers |
	ast := self basicAST.
	identifiers := OrderedCollection new.
	processor := HNBasicASTProcessor new specify: [ :on |
		on node if: #hasTypeIdentifier;
			ifEither: [
				on node if: [ :id | id name = 'foo' ].
				on node if: [ :id | id name = 'bar' ]
			];
			do: [ :id | identifiers add: id name ]
	].
	ast accept: processor.
	self assert: identifiers size equals: 3.
	self assert: identifiers first equals: 'foo'.
	"bar identifier appears twice because of parse desugaring"
	self assert: identifiers second equals: 'bar'.
	self assert: identifiers second equals: 'bar'.