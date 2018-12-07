tests
testNodeEitherNeitherCases
	| rootNode compiler rootCase firstLevelCases actualCase subcases |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on node if: #foo; do: #something.
		on either if: #hello; if: #world; do: #algo.
		on neither unless: #doge; unless: #chan; do: #rhythm.
	].
	compiler := HNDslASTCompiler new.
	rootCase := compiler compile: rootNode.
	firstLevelCases := self casesFromHolder: rootCase sameNodeSubcaseHolder.
	subcases := self casesFromHolder: rootCase descendantSubcaseHolder.
	self assert: rootCase hasDescendantSubcases not.
	self assert: firstLevelCases size equals: 3.
	self assert: subcases isEmpty.
			
	"assertions about the actual (explicitely defined) cases here"
	actualCase := firstLevelCases first.
	self assert: actualCase parent equals: rootCase.
	self assert: actualCase selector isNil.
	self assert: actualCase types equals: #().
	self assert: actualCase predicates size equals: 1.
	self assert: actualCase promiseHubClass equals: HNAllPromiseHub.
	self assert: actualCase sameNodeSubcaseHolder isEmpty.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild not.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup isNil.
	self assert: actualCase parentDependency
		equals: HNDslNoParentDependency instance.
	self deny: actualCase hasDescendantSubcases.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 2.

	actualCase := firstLevelCases second.
	self assert: actualCase parent equals: rootCase.
	self assert: actualCase selector isNil.
	self assert: actualCase types equals: #().
	self assert: actualCase predicates size equals: 2.
	self assert: actualCase promiseHubClass equals: HNAnyPromiseHub.
	self assert: actualCase sameNodeSubcaseHolder isEmpty.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild not.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup isNil.
	self assert: actualCase parentDependency
		equals: HNDslNoParentDependency instance.
	self deny: actualCase hasDescendantSubcases.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 3.

	actualCase := firstLevelCases third.
	self assert: actualCase parent equals: rootCase.
	self assert: actualCase selector isNil.
	self assert: actualCase types equals: #().
	self assert: actualCase predicates size equals: 2.
	self assert: actualCase promiseHubClass equals: HNNonePromiseHub.
	self assert: actualCase sameNodeSubcaseHolder isEmpty.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild not.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup isNil.
	self assert: actualCase parentDependency
		equals: HNDslNoParentDependency instance.
	self deny: actualCase hasDescendantSubcases.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 4.