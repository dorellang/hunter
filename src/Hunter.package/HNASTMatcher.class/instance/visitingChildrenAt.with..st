processing
visitingChildrenAt: slotName with: aBlock
	| directChildCases descendantCases |
	casesMatched ifEmpty: [
		"new frame is not needed if not matching anything"
		aBlock value.
		^ self
	].
	directChildCases := casesMatched flatCollect: [ :c | c directChildCasesFor: slotName ].
	descendantCases := casesMatched flatCollect: [ :c | c descendantCasesFor: slotName ].
	self pushNewFrame.
	currentFrame directChildCases: directChildCases;
		descendantCases: descendantCases.
	aBlock value.
	self popFrame