visiting
visitRootNode: aRootNode
	| sameNodeSubcaseHolderBuilder result hasDescendantSubcases |
	hasDescendantSubcases := false.
	result := HNDslCase new.
	sameNodeSubcaseHolderBuilder := HNDslCaseHolderBuilder new.
	aRootNode caseNodes do: [ :caseNode |
		| compiled |
		compiled := HNDslASTSubcompiler new parentCase: result;
			descendantSubcaseCompilers: self descendantSubcaseCompilers;
			compile: caseNode.
		sameNodeSubcaseHolderBuilder addCase: compiled.
		compiled parent: result.
		hasDescendantSubcases := hasDescendantSubcases or: [ compiled hasDescendantSubcases ].
	].
	^ result
		initActions: aRootNode initActions;
		localVariables: aRootNode globalVariables;
		sameNodeSubcaseHolder: sameNodeSubcaseHolderBuilder build;
		promiseHubClass: HNAllPromiseHub;
		parentDependency: HNDslNoParentDependency instance;
		isDirectChild: false;
		priority: aRootNode priority;
		hasDescendantSubcases: hasDescendantSubcases