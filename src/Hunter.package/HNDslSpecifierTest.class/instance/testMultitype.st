tests
testMultitype
	| rootNode caseNode group |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on node type: #(FunctionDeclaration FunctionExpression)
	].

	"assert let: ... be: ... works ok"
	self assert: rootNode globalVariables isEmpty.
	self assert: rootNode initActions isEmpty.
	
	"caseNode assertions"
	self assert: rootNode caseNodes size equals: 1.

	caseNode := rootNode caseNodes first.
	self assert: caseNode types equals: #(#FunctionDeclaration #FunctionExpression).
	self assert: caseNode localVariables isEmpty.
	self assert: caseNode initActions isEmpty.
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode groups isEmpty.