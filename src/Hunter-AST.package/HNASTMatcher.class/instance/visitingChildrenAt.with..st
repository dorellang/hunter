processing
visitingChildrenAt: slotName with: aBlock
	| directChildCases descendantCases |
	currentFrame casesMatched ifEmpty: [
		self pushNewFrame.
		currentFrame directChildCases: {}.
		aBlock value.
		self popFrame.
		^ self
	].
	directChildCases := currentFrame casesMatched
		flatCollect: [ :c | c directChildCasesFor: slotName ].
	descendantCases := currentFrame casesMatched
		flatCollect: [ :c | c descendantCasesFor: slotName ].
	self pushNewFrame.
	currentFrame directChildCases: directChildCases;
		descendantCases: descendantCases.
	aBlock value.
	self popFrame