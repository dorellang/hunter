visiting
visitCaseNode: aCaseNode
	| result  sameNodeSubcaseHolderBuilder subcaseGroupsAssocs hasDescendantSubcases i |
	hasDescendantSubcases := false.
	result := HNDslCase new.
	sameNodeSubcaseHolderBuilder := HNDslCaseHolderBuilder new.
	subcaseGroupsAssocs := OrderedCollection new.
	i := 0.
	aCaseNode groups select: #matchesSameNode thenDo: [ :aGroup |
		aGroup doesConditionParent ifTrue: [
			i := i + 1.
			subcaseGroupsAssocs add: aGroup promiseHubClass -> aGroup caseNodes size.
		].
		aGroup caseNodes do: [ :caseNode |
			| compiler compiledCase |
			compiler := HNDslASTSubcompiler new parentCase: result;
				group: aGroup;
				descendantSubcaseCompilers: self descendantSubcaseCompilers.
			aGroup doesConditionParent ifTrue: [ compiler caseGroupIndex: i ].
			compiledCase := compiler compile: caseNode.
			hasDescendantSubcases := hasDescendantSubcases or: [ compiledCase hasDescendantSubcases ].
			sameNodeSubcaseHolderBuilder addCase: compiledCase
		]
	].
	aCaseNode groups select: #matchesDescendants thenDo: [ :aGroup |
		hasDescendantSubcases := true.
		aGroup doesConditionParent ifTrue: [
			i := i + 1.
			subcaseGroupsAssocs add: aGroup promiseHubClass -> aGroup caseNodes size.
		].
		aGroup caseNodes collect: [ :caseNode |
			| compiler |
			compiler := HNDslActualASTCompiler new parentCase: result;
				node: caseNode;
				group: aGroup.
			aGroup doesConditionParent ifTrue: [ compiler caseGroupIndex: i ].
			compiler
		] into: self descendantSubcaseCompilers
	].
	^ result
		types: aCaseNode types;
		predicates: aCaseNode predicates;
		initActions: aCaseNode initActions;
		resolveActions: aCaseNode resolveActions;
		rejectActions: aCaseNode rejectActions;
		finallyActions: aCaseNode finallyActions;
		postTraversalResolveActions: aCaseNode postTraversalResolveActions;
		postTraversalRejectActions: aCaseNode postTraversalRejectActions;
		postTraversalFinallyActions: aCaseNode postTraversalFinallyActions;
		promiseHubClass: aCaseNode promiseHubClass;
		subcaseGroups: subcaseGroupsAssocs;
		localVariables: aCaseNode localVariables;
		priority: aCaseNode priority;
		sameNodeSubcaseHolder: sameNodeSubcaseHolderBuilder build;
		hasDescendantSubcases: hasDescendantSubcases;
		parentDependency: self parentDependency;
		parent: parentCase;
		isDirectChild: self matchesDirectChildren;
		selector: self selector;
		caseGroup: caseGroupIndex