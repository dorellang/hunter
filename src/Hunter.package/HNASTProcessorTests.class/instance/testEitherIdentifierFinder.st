tests
testEitherIdentifierFinder
	| ast processor identifiers |
	self skip: 'Nested AST queries are not supported right now'.
	ast := self basicAST.
	identifiers := OrderedCollection new.
	processor := HNBasicASTProcessor new specify: [ :on |
		on node if: #hasTypeIdentifier;
			ifMatchesEither: [
				on node if: [ :id | id name = 'foo' ].
				on node if: [ :id | id name = 'bar' ]
			];
			do: [ :id | identifiers add: id name ]
	].
	ast accept: processor.
	"bar identifier appears twice because of parse desugaring"
	self assert: identifiers asArray equals: {'foo'. 'bar'. 'bar'}