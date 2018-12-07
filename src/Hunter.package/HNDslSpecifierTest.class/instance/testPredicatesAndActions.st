tests
testPredicatesAndActions
	| rootNode caseNode |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on node type: #Identifier;
			if: #coolMethod;
			unless: #niceMethod;
			do: [ :id | 'something' ];
			otherwiseDo: [ :id | 'something else' ];
			anywayDo: [ :id :ctx | 'another thing' ];
			afterTraversal;
			do: [ :id :ctx | 'foo' ];
			do: [ 'foo*' ];
			otherwiseDo: [ :id :ctx | 'bar' ];
			anywayDo: [ :id :ctx | 'baz' ]
	].
	
	"assert let: ... be: ... works ok"
	self assert: rootNode globalVariables isEmpty.
	self assert: rootNode initActions isEmpty.
	
	"caseNode assertions"
	self assert: rootNode caseNodes size equals: 1.
	caseNode := rootNode caseNodes first.
	self assert: caseNode types equals: #(#Identifier).
	self assert: caseNode predicates size equals: 2.
	self assert: caseNode initActions isEmpty.
	self assert: caseNode resolveActions size equals: 1.
	self assert: caseNode rejectActions size equals: 1.
	self assert: caseNode finallyActions size equals: 1.
	self assert: caseNode postTraversalResolveActions size equals: 2.
	self assert: caseNode postTraversalRejectActions size equals: 1.
	self assert: caseNode postTraversalFinallyActions size equals: 1.
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode localVariables isEmpty.