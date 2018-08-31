tests
testIdentifierFinder
	| ast processor identifiers |
	ast := self basicAST.
	identifiers := OrderedCollection new.
	processor := HNBasicASTProcessor new specify: [ :on |
		on node if: #hasTypeIdentifier; do: [ :id | identifiers add: id name ]
	].
	ast accept: processor.
	self assert: identifiers size equals: 8.
	self assert: identifiers first equals: 'foo'.
	self assert: identifiers second equals: 'qux'.	
	"these identifiers appear twice because of parse desugaring"
	self assert: identifiers third equals: 'bar'.
	self assert: identifiers fourth equals: 'bar'.
	self assert: identifiers fifth equals: 'baz'.
	self assert: identifiers sixth equals: 'baz'.
	self assert: identifiers seventh equals: 'quux'.
	self assert: identifiers eighth equals: 'corge'.