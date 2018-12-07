tests
testDefaultConfigurator
	| caseNode configurator blockRes blockRej blockFin blockPred group |
	caseNode := HNDslCaseNode new.
	configurator := HNDslCaseConfigurator caseNode: caseNode.
	blockRes := [ :x | 1 ].
	blockRej := [ :x | 2 ].
	blockFin := [ :x | 3 ].
	blockPred := [ :x | true ].
	group := HNDslSameNodeGroup groupDependency: HNDslRequiresMatch instance.
	configurator addLocalVariable: #hola.
	configurator addLocalVariable: #mundo.
	configurator addResolveAction: blockRes.
	configurator addRejectAction: blockRej.
	configurator addFinallyAction: blockFin.
	configurator addPredicate: blockPred.
	configurator addGroup: group.
	configurator types: #(#foo #bar).
	self should: [ configurator types: #(baz) ] raise: HNDslTypesAlreadyDefined.

	self assert: caseNode localVariables asArray equals: #(#hola #mundo).
	self assert: caseNode resolveActions asArray equals: { blockRes }.
	self assert: caseNode rejectActions asArray equals: { blockRej }.
	self assert: caseNode finallyActions asArray equals: { blockFin }.
	self assert: caseNode predicates asArray equals: { blockPred }.
	self assert: caseNode types asArray equals: #(#foo #bar).
	self assert: caseNode groups asArray equals: {group}.