tests
testIdentifierFinder
	| rootNode compiler rootCase firstLevelCases actualCase |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on global let: #identifiers be: [ OrderedCollection new ].
		on node type: #Identifier; do: [ :id :ctx | ctx identifiers add: id name ].
	].
	compiler := HNDslASTCompiler new.
	rootCase := compiler compile: rootNode.
	firstLevelCases := self casesFromHolder: rootCase sameNodeSubcaseHolder.
	
	"asserting about rootCase"
	self assert: rootCase parent isNil.
	self assert: rootCase selector isNil.
	self assert: rootCase types isNil.
	self assert: rootCase predicates isEmpty.
	self assert: rootCase resolveActions isEmpty.
	self assert: rootCase rejectActions isEmpty.
	self assert: rootCase finallyActions isEmpty.
	self assert: rootCase postTraversalResolveActions isEmpty.
	self assert: rootCase postTraversalRejectActions isEmpty.
	self assert: rootCase postTraversalFinallyActions isEmpty.
	self assert: rootCase promiseHubClass equals: HNAllPromiseHub.
	self assert: firstLevelCases size equals: 1.
	self assert: rootCase descendantSubcaseHolder isEmpty.
	self assert: rootCase isDirectChild not.
	self assert: rootCase subcaseGroups isEmpty.
	self assert: rootCase caseGroup isNil.
	self assert: rootCase parentDependency
		equals: HNDslNoParentDependency instance.
	self assert: rootCase hasDescendantSubcases not.
	self assert: rootCase localVariables asArray equals: #(#identifiers).
	self assert: rootCase priority equals: 1.
	
	"assertions about the actual (explicitely defined) case here"
	actualCase := firstLevelCases first.
	self assert: actualCase parent equals: rootCase.
	self assert: actualCase selector isNil.
	self assert: actualCase types equals: #(Identifier).
	self assert: actualCase predicates isEmpty.
	self assert: actualCase resolveActions size equals: 1.
	self assert: actualCase rejectActions isEmpty.
	self assert: actualCase finallyActions isEmpty.
	self assert: actualCase postTraversalResolveActions isEmpty.
	self assert: actualCase postTraversalRejectActions isEmpty.
	self assert: actualCase postTraversalFinallyActions isEmpty.
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
