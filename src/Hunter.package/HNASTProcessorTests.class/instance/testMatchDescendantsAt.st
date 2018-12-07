tests
testMatchDescendantsAt
	| ast processor identifiers |
	self skip: 'Nested AST queries are not supported right now'.
	ast := self basicAST.
	identifiers := OrderedCollection new.
	processor := HNBasicASTProcessor new specify: [ :on |
		on node if: #hasTypeFunctionDeclaration;
			matchDescendantsAt: #body that: [
				on node if: #hasTypeIdentifier; do: [ :n | identifiers add: n name ]
			]
	].
	ast accept: processor.
	"some appear twice because of parser desugaring"
	self assert: identifiers asArray equals: {
		'qux'. 'bar'. 'bar'. 'baz'. 'baz'. 'quux'
	}