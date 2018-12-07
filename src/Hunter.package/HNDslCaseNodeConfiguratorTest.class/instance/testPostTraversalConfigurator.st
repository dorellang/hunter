tests
testPostTraversalConfigurator
	| caseNode configurator blockRes blockRej blockFin blockPred group |
	caseNode := HNDslCaseNode new.
	configurator := HNDslPostTraversalCaseConfigurator caseNode: caseNode.
	blockRes := [ :x | 1 ].
	blockRej := [ :x | 2 ].
	blockFin := [ :x | 3 ].
	blockPred := [ :x | true ].
	group := HNDslSameNodeGroup groupDependency: HNDslRequiresMatch instance.
	self should: [ configurator addLocalVariable: #hola ] raise: HNDslForbiddenAtPostTraversal.
	self should: [ configurator addLocalVariable: #mundo ] raise: HNDslForbiddenAtPostTraversal.
	configurator addResolveAction: blockRes.
	configurator addRejectAction: blockRej.
	configurator addFinallyAction: blockFin.
	
	self should: [ configurator addPredicate: blockPred ] raise: HNDslForbiddenAtPostTraversal.
	self should: [ configurator addGroup: group ] raise: HNDslForbiddenAtPostTraversal.
	self should: [ configurator types: #(#foo #bar) ] raise: HNDslForbiddenAtPostTraversal.

	self assert: caseNode localVariables asArray equals: #().
	self assert: caseNode resolveActions asArray equals: #().
	self assert: caseNode rejectActions asArray equals: #().
	self assert: caseNode finallyActions asArray equals: #().
	self assert: caseNode postTraversalResolveActions asArray equals: { blockRes }.
	self assert: caseNode postTraversalRejectActions asArray equals: { blockRej }.
	self assert: caseNode postTraversalFinallyActions asArray equals: { blockFin }.
	self assert: caseNode predicates asArray equals: #().
	self assert: caseNode types asArray equals: #().
	self assert: caseNode groups asArray equals: #().