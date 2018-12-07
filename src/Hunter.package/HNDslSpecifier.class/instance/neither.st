public
neither
	| newCaseNode |
	newCaseNode := (HNDslCaseNode new promiseHubClass: HNNonePromiseHub).
	currentFrame addCaseNode: newCaseNode.
	^ HNDslCaseNodeSpecifier specifier: self caseNode: newCaseNode