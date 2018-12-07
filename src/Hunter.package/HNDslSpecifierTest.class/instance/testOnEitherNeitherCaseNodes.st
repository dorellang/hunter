tests
testOnEitherNeitherCaseNodes
	| rootNode caseNode |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on either if: #condition1;
			if: #condition2;
			do: [ :id | 'foox' ].
		on neither if: #baz;
			unless: #bar;
			if: #qux;
			do: [ :id | 'corge' ].
	].
	
	"assert let: ... be: ... works ok"
	self assert: rootNode globalVariables isEmpty.
	self assert: rootNode initActions isEmpty.
	
	"caseNode assertions"
	self assert: rootNode caseNodes size equals: 2.
	caseNode := rootNode caseNodes first.
	self assert: caseNode types equals: #().
	self assert: caseNode predicates size equals: 2.
	self assert: caseNode initActions isEmpty.
	self assert: caseNode resolveActions size equals: 1.
	self assert: caseNode promiseHubClass equals: HNAnyPromiseHub.
	self assert: caseNode localVariables isEmpty.

	caseNode := rootNode caseNodes second.
	self assert: caseNode types equals: #().
	self assert: caseNode predicates size equals: 3.
	self assert: caseNode initActions isEmpty.
	self assert: caseNode resolveActions size equals: 1.
	self assert: caseNode promiseHubClass equals: HNNonePromiseHub.
	self assert: caseNode localVariables isEmpty.