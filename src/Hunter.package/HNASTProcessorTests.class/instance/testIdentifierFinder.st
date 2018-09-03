tests
testIdentifierFinder
	| ast processor identifiers |
	ast := self basicAST.
	identifiers := OrderedCollection new.
	processor := HNBasicASTProcessor new specify: [ :on |
		on node if: #hasTypeIdentifier; do: [ :id | identifiers add: id name ]
	].
	ast accept: processor.
	"some appear twice because of parse desugaring"
	self assert: identifiers asArray equals: {
		'foo'. 'qux'. 'bar'. 'bar'. 'baz'. 'baz'. 'quux'. 'corge'
	}