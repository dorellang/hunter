tests
testMatchThat
	| rootNode caseNode group |
	rootNode := HNDslSpecifier new rootNodeFromSpecBlock: [ :on |
		on node type: #FunctionDeclaration;
			matchThat: [
				on node type: #Identifier; do: #yes.
				on node type: #CallExpression; anywayDo: #no
			].
	].
		
	"caseNode assertions"
	self assert: rootNode caseNodes size equals: 1.

	caseNode := rootNode caseNodes first.
	self assert: caseNode types equals: #(#FunctionDeclaration).
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode groups size equals: 1.
	group := caseNode groups first.
	self assert: (group isKindOf: HNDslSameNodeGroup).
	self assert: group promiseHubClass isNil.
	self assert: group groupDependency equals: HNDslRequiresMatch instance.
	self assert: group caseNodes size equals: 2.
	caseNode := group caseNodes first.
	self assert: caseNode types equals: #(#Identifier).
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode resolveActions size equals: 1.
	caseNode := group caseNodes second.
	self assert: caseNode types equals: #(#CallExpression).
	self assert: caseNode promiseHubClass equals: HNAllPromiseHub.
	self assert: caseNode finallyActions size equals: 1