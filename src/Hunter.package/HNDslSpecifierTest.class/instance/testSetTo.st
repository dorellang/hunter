tests
testSetTo
	| rootNode caseNode |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on global let: #currentFn.
		on node type: #FunctionDeclaration;
			let: #tmp be: [:n :ctx | ctx currentFn ];
			set: #currentFn to: #yourself;
			afterTraversal;
			set: #currentFn to: #tmp.
	].

	"assert let: ... be: ... works ok"
	self assert: rootNode globalVariables asArray equals: #(#currentFn).
	self assert: rootNode initActions isEmpty.
	
	"caseNode assertions"
	self assert: rootNode caseNodes size equals: 1.

	caseNode := rootNode caseNodes first.
	self assert: caseNode types equals: #(#FunctionDeclaration).
	self assert: caseNode localVariables asArray equals: #(tmp).
	self assert: caseNode initActions size equals: 2.
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode groups isEmpty.
	self assert: caseNode postTraversalFinallyActions size equals: 1.