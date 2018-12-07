tests
testMatchSameNode
	| rootNode compiler rootCase firstLevelCases actualCase subcases |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on node type: #FunctionDeclaration;
			matchThat: [
				on node if: #foo; do: #john.
				on node if: #bar; do: #lennon.
				on node if: #baz; do: #faul
			].
	].
	compiler := HNDslASTCompiler new.
	rootCase := compiler compile: rootNode.
	firstLevelCases := self casesFromHolder: rootCase sameNodeSubcaseHolder.
	self assert: firstLevelCases size equals: 1.
	self assert: rootCase descendantSubcaseHolder isEmpty.

	"assertions about the actual (explicitely defined) cases here"
	actualCase := firstLevelCases first.
	self assert: actualCase parent equals: rootCase.
	self assert: actualCase selector isNil.
	self assert: actualCase types equals: #(FunctionDeclaration).
	self assert: actualCase promiseHubClass equals: HNAllPromiseHub.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild not.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup isNil.
	self assert: actualCase parentDependency
		equals: HNDslNoParentDependency instance.
	self assert: actualCase hasDescendantSubcases not.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 2.
	subcases := self casesFromHolder: actualCase sameNodeSubcaseHolder.
	self assert: subcases size equals: 3.
	
	actualCase := subcases first.
	self assert: actualCase parent equals: firstLevelCases first.
	self assert: actualCase selector isNil.
	self assert: actualCase types isEmpty.
	self assert: actualCase predicates size equals: 1.
	self assert: actualCase resolveActions size equals: 1.
	self assert: actualCase promiseHubClass equals: HNAllPromiseHub.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase sameNodeSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild not.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup isNil.
	self assert: actualCase parentDependency
		equals: HNDslMatchParentDependency instance.
	self assert: actualCase hasDescendantSubcases not.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 3.
	
	actualCase := subcases second.
	self assert: actualCase parent equals: firstLevelCases first.
	self assert: actualCase selector isNil.
	self assert: actualCase types isEmpty.
	self assert: actualCase predicates size equals: 1.
	self assert: actualCase resolveActions size equals: 1.
	self assert: actualCase promiseHubClass equals: HNAllPromiseHub.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase sameNodeSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild not.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup isNil.
	self assert: actualCase parentDependency
		equals: HNDslMatchParentDependency instance.
	self assert: actualCase hasDescendantSubcases not.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 4.

	actualCase := subcases third.
	self assert: actualCase parent equals: firstLevelCases first.
	self assert: actualCase selector isNil.
	self assert: actualCase types isEmpty.
	self assert: actualCase predicates size equals: 1.
	self assert: actualCase resolveActions size equals: 1.
	self assert: actualCase promiseHubClass equals: HNAllPromiseHub.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase sameNodeSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild not.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup isNil.
	self assert: actualCase parentDependency
		equals: HNDslMatchParentDependency instance.
	self assert: actualCase hasDescendantSubcases not.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 5.