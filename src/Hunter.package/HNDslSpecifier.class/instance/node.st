public
node
	| newCaseNode |
	newCaseNode := (HNDslCaseNode new promiseHubClass: HNAllPromiseHub).
	currentFrame addCaseNode: newCaseNode.
	^ HNDslCaseNodeSpecifier specifier: self caseNode: newCaseNode