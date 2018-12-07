tests
testCaseNodeVariables
	| rootNode caseNode group |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on global let: #decls be: [ OrderedCollection ].
		on node type: #FunctionDeclaration;
			let: #funcName be: [ :n | n id name ];
			matchDescendantsAt: #body that: [
				on node type: #VariableDeclaration; do: [ :n :ctx | ctx decls add: ctx funcName ]
			]
	].

	"assert let: ... be: ... works ok"
	self assert: rootNode globalVariables asArray equals: #(#decls).
	self assert: rootNode initActions size equals: 1.
	
	"caseNode assertions"
	self assert: rootNode caseNodes size equals: 1.

	caseNode := rootNode caseNodes first.
	self assert: caseNode types equals: #(#FunctionDeclaration).
	self assert: caseNode localVariables asArray equals: #(funcName).
	self assert: caseNode initActions size equals: 1.
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode groups size equals: 1.
	group := caseNode groups first.
	self assert: (group isKindOf: HNDslDescendantGroup).
	self assert: group promiseHubClass isNil.
	self assert: group selector equals: #body.
	self assert: group groupDependency equals: HNDslRequiresMatch instance.
	self assert: group caseNodes size equals: 1.
	caseNode := group caseNodes first.
	self assert: caseNode types equals: #(#VariableDeclaration).
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode resolveActions size equals: 1.