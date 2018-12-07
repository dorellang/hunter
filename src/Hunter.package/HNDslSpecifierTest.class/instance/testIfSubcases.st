tests
testIfSubcases
	| rootNode baseCaseNode caseNode group |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on node type: #FunctionDeclaration;
			ifDescendantsMatch: [ on node type: #Identifier; do: #foo ];
			ifChildrenMatch: [ on node do: #bar ];
			ifMatches: [ on node do: #baz ]
	].
	
	"assert let: ... be: ... works ok"
	self assert: rootNode globalVariables isEmpty.
	self assert: rootNode initActions isEmpty.
	
	"caseNode assertions"
	self assert: rootNode caseNodes size equals: 1.

	baseCaseNode := rootNode caseNodes first.
	self assert: baseCaseNode types equals: #(#FunctionDeclaration).
	self assert: baseCaseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: baseCaseNode groups size equals: 3.

	group := baseCaseNode groups first.
	self assert: (group isKindOf: HNDslDescendantGroup).
	self assert: group promiseHubClass equals: HNAllPromiseHub.
	self assert: group selector isNil.
	self assert: group groupDependency equals: HNDslConditionsParent instance.
	self assert: group caseNodes size equals: 1.
	caseNode := group caseNodes first.
	self assert: caseNode types equals: #(#Identifier).
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode resolveActions size equals: 1.
	self assert: caseNode resolveActions first equals: #foo.

	group := baseCaseNode groups second.
	self assert: (group isKindOf: HNDslChildOnlyGroup).
	self assert: group promiseHubClass equals: HNAllPromiseHub.
	self assert: group selector isNil.
	self assert: group groupDependency equals: HNDslConditionsParent instance.
	self assert: group caseNodes size equals: 1.
	caseNode := group caseNodes first.
	self assert: caseNode types equals: #().
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode resolveActions size equals: 1.
	self assert: caseNode resolveActions first equals: #bar.

	group := baseCaseNode groups third.
	self assert: (group isKindOf: HNDslSameNodeGroup ).
	self assert: group promiseHubClass equals: HNAllPromiseHub.
	self assert: group groupDependency equals: HNDslConditionsParent instance.
	self assert: group caseNodes size equals: 1.
	caseNode := group caseNodes first.
	self assert: caseNode types equals: #().
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode resolveActions size equals: 1.
	self assert: caseNode resolveActions first equals: #baz.
