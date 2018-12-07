tests
testPredicatesAndActions
	| rootNode compiler rootCase firstLevelCases actualCase |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on node type: #Identifier;
			if: #coolMethod;
			unless: #niceMethod;
			do: [ :id | 'something' ];
			otherwiseDo: [ :id | 'something else' ];
			otherwiseDo: [ :id | 'coming' ];
			otherwiseDo: [ :id | 'lol' ];
			anywayDo: [ :id :ctx | 'kono bangumi wa' ];
			anywayDo: [ :id :ctx | 'goran no suponsaa' ];
			anywayDo: [ :id :ctx | 'no teikyou de' ];
			anywayDo: [ :id :ctx | 'ookurishimashita ne~' ];
			afterTraversal;
			do: [ :id :ctx | 'foo' ];
			do: [ 'foo*' ];
			otherwiseDo: [ :id :ctx | 'bar' ];
			anywayDo: [ :id :ctx | 'baz' ]
	].
	compiler := HNDslASTCompiler new.
	rootCase := compiler compile: rootNode.
	firstLevelCases := self casesFromHolder: rootCase sameNodeSubcaseHolder.
	self assert: rootCase descendantSubcaseHolder isEmpty.
		
	"assertions about the actual (explicitely defined) case here"
	actualCase := firstLevelCases first.
	self assert: actualCase parent equals: rootCase.
	self assert: actualCase selector isNil.
	self assert: actualCase types equals: #(Identifier).
	self assert: actualCase predicates size equals: 2.
	self assert: actualCase resolveActions size equals: 1.
	self assert: actualCase rejectActions size equals: 3.
	self assert: actualCase finallyActions size equals: 4.
	self assert: actualCase postTraversalResolveActions size equals: 2.
	self assert: actualCase postTraversalRejectActions size equals: 1.
	self assert: actualCase postTraversalFinallyActions size equals: 1.
	self assert: actualCase promiseHubClass equals: HNAllPromiseHub.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase sameNodeSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild not.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup isNil.
	self assert: actualCase parentDependency
		equals: HNDslNoParentDependency instance.
	self assert: actualCase hasDescendantSubcases not.
	self assert: actualCase localVariables isEmpty.
