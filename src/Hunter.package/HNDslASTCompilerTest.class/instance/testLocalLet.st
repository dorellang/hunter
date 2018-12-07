tests
testLocalLet
	| rootNode compiler rootCase firstLevelCases actualCase |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on node type: #FunctionDeclaration; let: #dogeChan
	].
	compiler := HNDslASTCompiler new.
	rootCase := compiler compile: rootNode.
	firstLevelCases := self casesFromHolder: rootCase sameNodeSubcaseHolder.
		
	"assertions about the actual (explicitely defined) case here"
	actualCase := firstLevelCases first.
	self assert: actualCase parent equals: rootCase.
	self assert: actualCase selector isNil.
	self assert: actualCase types equals: #(FunctionDeclaration).
	self assert: actualCase predicates isEmpty.
	self assert: actualCase resolveActions isEmpty.
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
	self assert: actualCase localVariables asArray equals: #(#dogeChan).
