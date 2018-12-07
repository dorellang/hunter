tests
testMatchDescendantAndChildren
	| rootNode compiler rootCase firstLevelCases actualCase subcases |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on global let: #identifiers be: [ OrderedCollection new ];
			let: #propValueNodes be: [ OrderedCollection new ].
		on node type: #FunctionDeclaration;
			matchDescendantsThat: [
				on node type: #Identifier; do: [ :n :ctx | ctx identifiers add: n name ].
				on node type: #CallExpression; do: #yourself
			].
		on node type: #ObjectExpression;
			matchChildrenThat: [
				on node otherwiseDo: [ :n :ctx | ctx propValueNodes add: n value ]
			].
		on node type: #dummy; do: #bleh.
	].
	compiler := HNDslASTCompiler new.
	rootCase := compiler compile: rootNode.
	firstLevelCases := self casesFromHolder: rootCase sameNodeSubcaseHolder.
	subcases := self casesFromHolder: rootCase descendantSubcaseHolder.
	self assert: rootCase hasDescendantSubcases.
	self assert: firstLevelCases size equals: 3.
	self assert: subcases size equals: 3.
			
	"assertions about the actual (explicitely defined) cases here"
	actualCase := firstLevelCases first.
	self assert: actualCase parent equals: rootCase.
	self assert: actualCase selector isNil.
	self assert: actualCase types equals: #(FunctionDeclaration).
	self assert: actualCase promiseHubClass equals: HNAllPromiseHub.
	self assert: actualCase sameNodeSubcaseHolder isEmpty.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild not.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup isNil.
	self assert: actualCase parentDependency
		equals: HNDslNoParentDependency instance.
	self assert: actualCase hasDescendantSubcases.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 2.
	
	actualCase := subcases first.
	self assert: actualCase parent equals: firstLevelCases first.
	self assert: actualCase selector isNil.
	self assert: actualCase types equals: #(Identifier).
	self assert: actualCase predicates isEmpty.
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
	self assert: actualCase types equals: #(CallExpression).
	self assert: actualCase predicates isEmpty.
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

	actualCase := firstLevelCases second.
	self assert: actualCase parent equals: rootCase.
	self assert: actualCase selector isNil.
	self assert: actualCase types equals: #(ObjectExpression).
	self assert: actualCase predicates isEmpty.
	self assert: actualCase resolveActions isEmpty.
	self assert: actualCase promiseHubClass equals: HNAllPromiseHub.
	self assert: actualCase sameNodeSubcaseHolder isEmpty.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild not.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup isNil.
	self assert: actualCase parentDependency
		equals: HNDslNoParentDependency instance.
	self assert: actualCase hasDescendantSubcases.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 5.
	
	actualCase := subcases third.
	self assert: actualCase parent equals: firstLevelCases second.
	self assert: actualCase selector isNil.
	self assert: actualCase types equals: #().
	self assert: actualCase rejectActions size equals: 1.
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
	self assert: actualCase priority equals: 6.

	actualCase := firstLevelCases third.
	self assert: actualCase parent equals: rootCase.
	self assert: actualCase selector isNil.
	self assert: actualCase types equals: #(dummy).
	self assert: actualCase predicates isEmpty.
	self assert: actualCase resolveActions size equals: 1.
	self assert: actualCase promiseHubClass equals: HNAllPromiseHub.
	self assert: actualCase sameNodeSubcaseHolder isEmpty.
	self assert: actualCase descendantSubcaseHolder isEmpty.
	self assert: actualCase isDirectChild not.
	self assert: actualCase subcaseGroups isEmpty.
	self assert: actualCase caseGroup isNil.
	self assert: actualCase parentDependency
		equals: HNDslNoParentDependency instance.
	self assert: actualCase hasDescendantSubcases not.
	self assert: actualCase localVariables isEmpty.
	self assert: actualCase priority equals: 7.