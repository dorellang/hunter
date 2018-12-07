tests
testMatchDescendantsAtOrder
	| ast processor trace |
	self skip: 'Nested AST queries are not supported right now'.
	ast := self nestedFunctionAST.
	trace := OrderedCollection new.
	processor := HNBasicASTProcessor new specify: [ :on |
		on node if: #isFunctionLikeNode;
			matchDescendantsAt: #body that: [
				on node if: #isFunctionLikeNode;
					do: [ :n | trace add: 'found inner function']
			];
			do: [ :n | trace add: 'found function' ].
		on node if: #isDeclaration;
			do: [ :n | trace add: 'found declaration' ]
	].
	ast accept: processor.
	self assert: trace asArray equals: {
		'found function'.
		'found declaration'.
		'found function'.
		'found inner function'
	}