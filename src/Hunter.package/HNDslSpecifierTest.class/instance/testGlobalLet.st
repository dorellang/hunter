tests
testGlobalLet
	| rootNode |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on global let: #myVar.
	].

	"assert let: ... be: ... works ok"
	self assert: rootNode globalVariables asArray equals: #(#myVar).
	
	"caseNode assertions"
	self assert: rootNode caseNodes isEmpty.