tests
testLocalLet
	| rootNode caseNode group |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on node type: #FunctionDeclaration; let: #dogeChan
	].

	"assert let: ... be: ... works ok"
	self assert: rootNode globalVariables isEmpty.
	self assert: rootNode initActions isEmpty.
	
	"caseNode assertions"
	self assert: rootNode caseNodes size equals: 1.

	caseNode := rootNode caseNodes first.
	self assert: caseNode types equals: #(#FunctionDeclaration).
	self assert: caseNode localVariables asArray equals: #(dogeChan).
	self assert: caseNode initActions size equals: 0.
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode groups isEmpty.