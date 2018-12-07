public
either
	| newCaseNode |
	newCaseNode := (HNDslCaseNode new promiseHubClass: HNAnyPromiseHub).
	currentFrame addCaseNode: newCaseNode.
	^ HNDslCaseNodeSpecifier specifier: self caseNode: newCaseNode