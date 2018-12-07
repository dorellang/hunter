tests
testMatchChildrenAt
	| ast processor identifiers |
	self skip: 'Nested AST queries are not supported right now'.
	ast := self basicAST.
	identifiers := OrderedCollection new.
	processor := HNBasicASTProcessor new specify: [ :on |
		on node if: #hasTypeProperty;
			matchChildrenAt: #value that: [
				on node if: #hasTypeIdentifier; do: [ :id | identifiers add: id name ]
			]
	].
	ast accept: processor.
	self assert: identifiers asArray equals: {'bar'}