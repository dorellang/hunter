tests
testMatchDescendantsAtAndChildrenAt
	| rootNode caseNode group |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on global let: #identifiers be: [ OrderedCollection new ];
			let: #propValueNodes be: [ OrderedCollection new ].
		on node type: #FunctionDeclaration;
			matchDescendantsAt: #body that: [
				on node type: #Identifier; do: [ :n :ctx | ctx identifiers add: n name ]
			].
		on node type: #ObjectExpression;
			matchChildrenAt: #properties that: [
				on node do: [ :n :ctx | ctx propValueNodes add: n value ]
			].
	].
	
	"assert let: ... be: ... works ok"
	self assert: rootNode globalVariables asArray equals: #(#identifiers #propValueNodes).
	self assert: rootNode initActions size equals: 2.
	
	"caseNode assertions"
	self assert: rootNode caseNodes size equals: 2.

	caseNode := rootNode caseNodes first.
	self assert: caseNode types equals: #(#FunctionDeclaration).
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode groups size equals: 1.
	group := caseNode groups first.
	self assert: (group isKindOf: HNDslDescendantGroup).
	self assert: group promiseHubClass isNil.
	self assert: group selector equals: #body.
	self assert: group groupDependency equals: HNDslRequiresMatch instance.
	self assert: group caseNodes size equals: 1.
	caseNode := group caseNodes first.
	self assert: caseNode types equals: #(#Identifier).
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode resolveActions size equals: 1.

	caseNode := rootNode caseNodes second.
	self assert: caseNode types equals: #(#ObjectExpression).
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode groups size equals: 1.
	group := caseNode groups first.
	self assert: (group isKindOf: HNDslChildOnlyGroup).
	self assert: group promiseHubClass isNil.
	self assert: group selector equals: #properties.
	self assert: group groupDependency equals: HNDslRequiresMatch instance.
	self assert: group caseNodes size equals: 1.
	caseNode := group caseNodes first.
	self assert: caseNode types equals: #().
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode resolveActions size equals: 1.
