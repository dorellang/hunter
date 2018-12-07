tests
testIfMatches
	| rootNode compiler rootCase firstLevelCases actualCase subcases ifMatchesEitherCases |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on node
			matchChildrenAt: #lol that: [ on node do: #world ];
			ifMatchesEither: [ on node if: #foo. on node if: #bar. on node if: #baz ];
			ifDescendantsMatchNeither: [ on node if: #hello ];
			ifChildrenMatch: [ on node if: #doge ];
			do: #something
	].
	compiler := HNDslASTCompiler new.
	rootCase := compiler compile: rootNode.
	firstLevelCases := self casesFromHolder: rootCase sameNodeSubcaseHolder.
	subcases := self casesFromHolder: rootCase descendantSubcaseHolder.
	self assert: rootCase hasDescendantSubcases.
	self assert: firstLevelCases size equals: 1.
	self assert: subcases size equals: 3.
			
	"assertions about the actual (explicitely defined) cases here"
	actualCase := firstLevelCases first.
	self assert: actualCase parent equals: rootCase.
	self assert: actualCase selector isNil.
	self assert: actualCase types isEmpty.
	self assert: actualCase promiseHubClass equals: HNAllPromiseHub.
	ifMatchesEitherCases := (self casesFromHolder: actualCase sameNodeSubcaseHolder).
	self assert: ifMatchesEitherCases size equals: 3.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild not.
	self assert: actualCase subcaseGroups asArray
		equals: { HNAnyPromiseHub -> 3. HNNonePromiseHub -> 1. HNAllPromiseHub -> 1}.
	self assert: actualCase caseGroup isNil.
	self assert: actualCase parentDependency
		equals: HNDslNoParentDependency instance.
	self assert: actualCase hasDescendantSubcases.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 2.

	actualCase := subcases first.
	self assert: actualCase parent equals: firstLevelCases first.
	self assert: actualCase selector equals: #lol.
	self assert: actualCase types isEmpty.
	self assert: actualCase predicates isEmpty.
	self assert: actualCase resolveActions size equals: 1.
	self assert: actualCase promiseHubClass equals: HNAllPromiseHub.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase sameNodeSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup isNil.
	self assert: actualCase parentDependency
		equals: HNDslMatchParentDependency instance.
	self assert: actualCase hasDescendantSubcases not.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 3.
	
	actualCase := ifMatchesEitherCases first.
	self assert: actualCase parent equals: firstLevelCases first.
	self assert: actualCase selector isNil.
	self assert: actualCase types isEmpty.
	self assert: actualCase predicates size equals: 1.
	self assert: actualCase resolveActions isEmpty.
	self assert: actualCase promiseHubClass equals: HNAllPromiseHub.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase sameNodeSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild not.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup equals: 1.
	self assert: actualCase parentDependency
		equals: HNDslNoParentDependency instance.
	self assert: actualCase hasDescendantSubcases not.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 4.
	
	actualCase := ifMatchesEitherCases second.
	self assert: actualCase parent equals: firstLevelCases first.
	self assert: actualCase selector isNil.
	self assert: actualCase types isEmpty.
	self assert: actualCase predicates size equals: 1.
	self assert: actualCase resolveActions isEmpty.
	self assert: actualCase promiseHubClass equals: HNAllPromiseHub.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase sameNodeSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild not.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup equals: 1.
	self assert: actualCase parentDependency
		equals: HNDslNoParentDependency instance.
	self assert: actualCase hasDescendantSubcases not.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 5.

	actualCase := ifMatchesEitherCases third.
	self assert: actualCase parent equals: firstLevelCases first.
	self assert: actualCase selector isNil.
	self assert: actualCase types isEmpty.
	self assert: actualCase predicates size equals: 1.
	self assert: actualCase resolveActions isEmpty.
	self assert: actualCase promiseHubClass equals: HNAllPromiseHub.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase sameNodeSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild not.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup equals: 1.
	self assert: actualCase parentDependency
		equals: HNDslNoParentDependency instance.
	self assert: actualCase hasDescendantSubcases not.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 6.

	actualCase := subcases second.
	self assert: actualCase parent equals: firstLevelCases first.
	self assert: actualCase selector isNil.
	self assert: actualCase types isEmpty.
	self assert: actualCase predicates size equals: 1.
	self assert: actualCase resolveActions isEmpty.
	self assert: actualCase promiseHubClass equals: HNAllPromiseHub.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase sameNodeSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild not.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup equals: 2.
	self assert: actualCase parentDependency
		equals: HNDslNoParentDependency instance.
	self assert: actualCase hasDescendantSubcases not.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 7.

	actualCase := subcases third.
	self assert: actualCase parent equals: firstLevelCases first.
	self assert: actualCase selector isNil.
	self assert: actualCase types isEmpty.
	self assert: actualCase predicates size equals: 1.
	self assert: actualCase resolveActions isEmpty.
	self assert: actualCase promiseHubClass equals: HNAllPromiseHub.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase sameNodeSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup equals: 3.
	self assert: actualCase parentDependency
		equals: HNDslNoParentDependency instance.
	self assert: actualCase hasDescendantSubcases not.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 8.