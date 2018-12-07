tests
testIfEitherSubcasesWithSelector
	| rootNode baseCaseNode caseNode group |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on node type: #FunctionDeclaration;
			ifDescendantsAt: #body matchEither: [ on node type: #Identifier; do: #foo ];
			ifChildrenAt: #args matchEither: [ on node do: #bar ]
	].
	
	"assert let: ... be: ... works ok"
	self assert: rootNode globalVariables isEmpty.
	self assert: rootNode initActions isEmpty.
	
	"caseNode assertions"
	self assert: rootNode caseNodes size equals: 1.

	baseCaseNode := rootNode caseNodes first.
	self assert: baseCaseNode types equals: #(#FunctionDeclaration).
	self assert: baseCaseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: baseCaseNode groups size equals: 2.

	group := baseCaseNode groups first.
	self assert: (group isKindOf: HNDslDescendantGroup).
	self assert: group promiseHubClass equals: HNAnyPromiseHub.
	self assert: group selector equals: #body.
	self assert: group groupDependency equals: HNDslConditionsParent instance.
	self assert: group caseNodes size equals: 1.
	caseNode := group caseNodes first.
	self assert: caseNode types equals: #(#Identifier).
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode resolveActions size equals: 1.
	self assert: caseNode resolveActions first equals: #foo.

	group := baseCaseNode groups second.
	self assert: (group isKindOf: HNDslChildOnlyGroup).
	self assert: group promiseHubClass equals: HNAnyPromiseHub.
	self assert: group selector equals: #args.
	self assert: group groupDependency equals: HNDslConditionsParent instance.
	self assert: group caseNodes size equals: 1.
	caseNode := group caseNodes first.
	self assert: caseNode types equals: #().
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode resolveActions size equals: 1.
	self assert: caseNode resolveActions first equals: #bar