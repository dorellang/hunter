tests
testMatchDescendantsAt
	| ast processor identifiers |
	ast := self basicAST.
	identifiers := OrderedCollection new.
	processor := HNBasicASTProcessor new specify: [ :on |
		on node if: #hasTypeFunctionDeclaration;
			matchDescendantsAt: #body that: [
				on node if: #hasTypeIdentifier; do: [ :n | identifiers add: n name ]
			]
	].
	ast accept: processor.
	self assert: identifiers size equals: 6.
	self assert: identifiers first equals: 'qux'.
	"these identifiers appear twice because of parse desugaring"
	self assert: identifiers second equals: 'bar'.
	self assert: identifiers third equals: 'bar'.
	self assert: identifiers fourth equals: 'baz'.
	self assert: identifiers fifth equals: 'baz'.
	self assert: identifiers sixth equals: 'quux'.