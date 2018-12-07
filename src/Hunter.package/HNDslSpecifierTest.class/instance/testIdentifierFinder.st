tests
testIdentifierFinder
	| rootNode caseNode |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on global let: #identifiers be: [ OrderedCollection new ].
		on node type: #Identifier; do: [ :id :ctx | ctx identifiers add: id name ].
	].
	
	"assert let: ... be: ... works ok"
	self assert: rootNode globalVariables asArray equals: #(#identifiers).
	self assert: rootNode initActions size equals: 1.
	
	"caseNode assertions"
	self assert: rootNode caseNodes size equals: 1.
	caseNode := rootNode caseNodes first.
	self assert: caseNode types equals: #(#Identifier).
	self assert: caseNode predicates isEmpty.
	self assert: caseNode initActions isEmpty.
	self assert: caseNode resolveActions size equals: 1.
	self assert: caseNode rejectActions isEmpty.
	self assert: caseNode finallyActions isEmpty.
	self assert: caseNode postTraversalResolveActions isEmpty.
	self assert: caseNode postTraversalRejectActions isEmpty.
	self assert: caseNode postTraversalFinallyActions isEmpty.
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode localVariables isEmpty.
	self assert: caseNode localVariables isEmpty